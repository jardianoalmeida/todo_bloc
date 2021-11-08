import '../../domain/errors/erros.dart';
import '../../domain/entities/auth_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_datasource.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource datasource;

  AuthRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, AuthEntity>> login(AuthEntity authEntity) async {
    try {
      final data = await datasource.login(authEntity);
      if (data == null) {
        return Left<Failure, AuthEntity>(DatasourceResultNull());
      }
      // if (list.isEmpty) {
      //   return Left(EmptyList());
      // }
      return Right<Failure, AuthEntity>(data);
    } catch (e) {
      return Left<Failure, AuthEntity>(ErrorSearch());
    }
  }
}