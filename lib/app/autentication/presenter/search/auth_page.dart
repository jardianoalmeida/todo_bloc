import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_bloc/app/autentication/domain/entities/auth_entity.dart';
import 'auth_bloc.dart';
import 'states/state.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends ModularState<SearchPage, AuthBloc> {
  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Github Search"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                bloc.add(const AuthEntity(password: '', username: ''));
              },
            ),
          ),
          Expanded(
            child: StreamBuilder(
                stream: bloc.stream,
                builder: (context, snapshot) {
                  final state = bloc.state;

                  if (state is Authtart) {
                    return Center(
                      child: Text('iniciando'),
                    );
                  }
                  if (state is AuthError) {
                    return Center(
                      child: Text('Ouve um erro'),
                    );
                  }
                  if (state is AuthLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  final data = (state as AuthSuccess).auth;
                  return Text(data.password);
                }),
          ),
        ],
      ),
    );
  }
}
