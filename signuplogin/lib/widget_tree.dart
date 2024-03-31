import 'package:flutter/material.dart';
//import 'package:signuplogin/pages/login_register_page.dart';
import 'package:signuplogin/pages/login_page.dart';
import 'package:signuplogin/pages/signup_page.dart';
import 'package:signuplogin/pages/home_page.dart';
import 'package:signuplogin/auth.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // User is authenticated
            return HomePage();
          } else {
            // User is not authenticated
            return LoginPage();
          }
        });
  }
}
