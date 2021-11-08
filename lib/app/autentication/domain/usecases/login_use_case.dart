import 'package:dartz/dartz.dart';
import '../repositories/auth_repository.dart';
import '../entities/auth_entity.dart';

import '../errors/erros.dart';

mixin LoginUseCase {
  Future<Either<Failure, AuthEntity>> call(AuthEntity textSearch);
}

class LoginUseCaseImpl implements LoginUseCase {
  final AuthRepository repository;

  LoginUseCaseImpl(this.repository);

  @override
  Future<Either<Failure, AuthEntity>> call(AuthEntity? textSearch) async {
    if (textSearch!.password.isEmpty || textSearch.username.isEmpty) {
      return Left(InvalidSearchText());
    }
    return repository.login(textSearch);
  }
}
