import 'package:dartz/dartz.dart';
import 'package:finca/domain/auth/auth_failure.dart';
import 'package:finca/domain/auth/current_user.dart';
import 'package:finca/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<CurrentUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required EmailAddress emailAddress,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}
