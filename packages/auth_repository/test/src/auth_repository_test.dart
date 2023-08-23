// ignore_for_file: prefer_const_constructors

import 'package:auth_repository/auth_repository.dart';
import 'package:test/test.dart';

void main() {
  final authRepository = AuthRepository();

  group('AuthRepository', () {
    test('can be instantiated', () {
      expect(authRepository, isNotNull);
    });
  });
}
