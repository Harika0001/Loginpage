import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/splash_screen.dart';
import 'package:hexcolor/hexcolor.dart';


void main() =>
  runApp(LoginUiApp());


class LoginUiApp extends StatefulWidget {
  @override
  State<LoginUiApp> createState() => _LoginUiAppState();
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('flutter login page'),
        ),
        body: Center(
          child: Container(),
          ),
        ),
      );

  }
}

class _LoginUiAppState extends State<LoginUiApp> {
  Color _primaryColor= HexColor('#DC54FE');

  Color _accentColor = HexColor('#8A02AE');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)   {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login UI',
      theme: ThemeData(
          primaryColor: _primaryColor,
          scaffoldBackgroundColor: Colors.blueGrey.shade100, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey).copyWith(secondary: _accentColor)
      ),
      home:  SplashScreen(title: 'Flutter Login UI'),
    );
  }
}

