import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:signuplogin/auth.dart';
import 'package:signuplogin/pages/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String? errorMessage = '';
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
      // Navigate to the login page after successful signup
      Navigator.pushReplacementNamed(context, '/login');
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  // Function to navigate to the login page
  void _goToLoginPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  Widget _title() {
    return const Text('Firebase Auth');
  }

  Widget _entryField(
    String title,
    TextEditingController controller,
  ) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: title,
      ),
    );
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : 'Try Again ! $errorMessage');
  }

  Widget _submitButton() {
    return ElevatedButton(
      onPressed: createUserWithEmailAndPassword,
      child: const Text('Register'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _entryField('email', _controllerEmail),
            _entryField('password', _controllerPassword),
            _errorMessage(),
            _submitButton(),
            // Button to navigate to the login page
            TextButton(
              onPressed: _goToLoginPage,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
