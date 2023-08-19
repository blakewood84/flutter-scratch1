import 'dart:async';

import 'package:dartz/dartz.dart' show Either, Unit;
import 'package:firebase_auth/firebase_auth.dart' show User;

/// Interface for AuthRepository class
abstract interface class IAuthRepository {
  /// Retrieves the current Firebase [User] or [Null] if not authenticated.
  User? get currentUser;

  /// A stream to listen for the verificationId once the code is sent.
  Stream<String?> get codeSentStream;

  /// Signs in a user using their phone number.
  Future<Either<bool, Unit>> verifyPhoneNumber(String phoneNumber);

  /// Verifies and confirms the SMS Code received by the user.
  Future<Either<bool, Unit>> verifySmsCode(String code);
}
