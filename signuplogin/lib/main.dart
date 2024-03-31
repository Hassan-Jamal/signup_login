import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase Core
import 'package:signuplogin/firebase_options.dart'; // Corrected import path
import 'package:signuplogin/pages/signup_page.dart'; // Import your signup page
import 'package:signuplogin/pages/login_page.dart'; // Import your login page
import 'package:signuplogin/pages/home_page.dart'; // Import your home page

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform); // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Signup_Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/signup', // Set the initial route to the signup page
      routes: {
        '/signup': (context) => SignupPage(), // Define the signup page route
        '/login': (context) => LoginPage(), // Define the login page route
        '/home': (context) => HomePage(), // Define the home page route
      },
    );
  }
}
