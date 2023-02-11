import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:project_one/pages/SplashScreen.dart';

void main() {
  runApp(LoginUiApp());
}

class LoginUiApp extends StatelessWidget {
  Color _primaryColor = HexColor('#1D1E23');
  Color _accentColor = HexColor('#202125');

  LoginUiApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      theme: ThemeData(
          primaryColor: _primaryColor,
          scaffoldBackgroundColor: Colors.grey.shade400,
          primarySwatch: Colors.blueGrey),
      home: const SplashScreen(title: 'Flutter Login UI'),
    );
  }
}
