import 'dart:convert';

import '../../domain/entities/auth_entity.dart';

class AuthModel extends AuthEntity {
  final String username;
  final String password;

  const AuthModel({
    required this.username,
    required this.password,
  }) : super(username: username, password: password);

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'password': password,
    };
  }

  static AuthModel fromMap(Map<String, dynamic> map) {
    return AuthModel(
      username: map['username'],
      password: map['password'],
    );
  }

  String toJson() => json.encode(toMap());

  static AuthModel fromJson(String source) => fromMap(json.decode(source));
}
