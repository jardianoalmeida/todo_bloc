import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await di.init();
  // runApp(MyApp());
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}