import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:todo_bloc/app/autentication/data/models/result_model.dart';
import 'package:todo_bloc/app/autentication/domain/entities/auth_entity.dart';


abstract class AuthDatasource {
  Future<AuthModel?> login(AuthEntity auth);
}

class AuthDatasourceImpl implements AuthDatasource {
  final Dio dio;

  AuthDatasourceImpl(this.dio);

  @override
  Future<AuthModel?> login(AuthEntity auth) async {
    return AuthModel.fromJson('');
    // print(textSearch);
    // var url = ("https://api.github.com/search/users?q=$textSearch");
    // var result = await this.dio.get(url);
    // if (result.statusCode == 200) {
    //   final json = jsonDecode(result.data);
    //   print('execute datasource');
    //   var jsonList = json['items'] as List;
    //   var list = jsonList
    //       .map((item) => ResultModel(
    //             username: item['username'],
    //             password: item['password'],
    //           ))
    //       .toList();
    //   return list;
    // } else {
    //   throw Exception();
    // }
  }
}
