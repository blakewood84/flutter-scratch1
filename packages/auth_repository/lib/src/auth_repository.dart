import 'dart:async' show Stream;
import 'dart:developer' as devtools;

import 'package:auth_repository/src/models/interface.dart' show IAuthRepository;
import 'package:dartz/dartz.dart' show Either, Unit, left, right, unit;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/subjects.dart';

/// {@template auth_repository}
/// Authentication Repository
/// {@endtemplate}
class AuthRepository implements IAuthRepository {
  /// {@macro auth_repository}
  AuthRepository({
    required FirebaseAuth firebaseAuth,
  }) : _firebaseAuth = firebaseAuth;

  final FirebaseAuth _firebaseAuth;

  final _codeSentController = BehaviorSubject<String?>.seeded(null);

  @override
  Stream<String?> get codeSentStream => _codeSentController.stream;

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  @override
  Future<Either<bool, Unit>> verifyPhoneNumber(
    String phoneNumber, [
    int? forceResendingToken,
  ]) async {
    devtools.log('phoneNumber: $phoneNumber');
    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (credential) {},
        verificationFailed: (failed) {},
        codeSent: (id, resendToken) {
          devtools.log('verificationId: $id');
          _codeSentController.add(id);
        },
        codeAutoRetrievalTimeout: (verificationId) {},
        forceResendingToken: forceResendingToken,
      );
      return left(true);
    } on FirebaseAuthException catch (error, stackTrace) {
      devtools.log(
        'verifyPhoneNumber method exception: ',
        error: error,
        stackTrace: stackTrace,
      );
      return right(unit);
    }
  }

  @override
  Future<Either<bool, Unit>> verifySmsCode(String smsCode) async {
    try {
      final verificationId = _codeSentController.value ?? '';
      devtools.log('verificationId: $verificationId');
      devtools.log('smsCode: $smsCode');
      // Create a PhoneAuthCredential with the code
      final credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );

      // Sign the user in (or link) with the credential
      await _firebaseAuth.signInWithCredential(credential);
      return left(true);
    } on FirebaseAuthException catch (error, stackTrace) {
      devtools.log(
        'verifyPhoneNumber method exception: ',
        error: error,
        stackTrace: stackTrace,
      );
      return right(unit);
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    _codeSentController.add(null);
  }
}
