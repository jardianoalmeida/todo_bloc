
import 'package:todo_bloc/app/autentication/domain/entities/auth_entity.dart';
import 'package:todo_bloc/app/autentication/domain/errors/erros.dart';

abstract class AuthState {}

class AuthSuccess implements AuthState {
  final AuthEntity auth;

  AuthSuccess(this.auth);
}

class AuthError implements AuthState {
  final Failure error;

  AuthError(this.error);
}

class AuthLoading implements AuthState {}

class Authtart implements AuthState {}
