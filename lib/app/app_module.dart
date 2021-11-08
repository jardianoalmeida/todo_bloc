import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'autentication/data/datasources/auth_datasource.dart';
import 'autentication/data/repositories/auth_repository_impl.dart';
import 'autentication/domain/usecases/login_use_case.dart';
import 'autentication/presenter/search/auth_bloc.dart';
import 'autentication/presenter/search/auth_page.dart';


class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => Dio()),
    Bind((i) => AuthDatasourceImpl(i())),
    Bind((i) => AuthRepositoryImpl(i())),
    Bind((i) => LoginUseCaseImpl(i())),
    Bind((i) => AuthBloc(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => SearchPage()),
  ];
}
