import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/app/autentication/domain/entities/auth_entity.dart';
import 'states/state.dart';
import '../../domain/usecases/login_use_case.dart';

class AuthBloc extends Bloc<AuthEntity, AuthState> {
  final LoginUseCaseImpl? searchByText;

  AuthBloc(this.searchByText) : super(Authtart());

  @override
  Stream<AuthState> mapEventToState(AuthEntity event) async* {
    yield AuthLoading();
    final result = await searchByText!(event);
    yield result.fold((l) => AuthError(l), (r) => AuthSuccess(r));
  }
}
