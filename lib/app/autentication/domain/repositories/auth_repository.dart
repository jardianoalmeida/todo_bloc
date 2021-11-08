import '../errors/erros.dart';
import '../entities/auth_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthEntity>> login(AuthEntity authEntity);
}