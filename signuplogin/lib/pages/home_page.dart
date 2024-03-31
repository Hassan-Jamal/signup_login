import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:signuplogin/auth.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  Future<void> signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.pushReplacementNamed(context, '/login'); // Navigate back to login page
    } catch (e) {
      print('Sign out failed: $e');
    }
  }

  Widget _title() {
    return const Text('Firebase Auth');
  }

  Widget _userEmail(User? user) {
    return Text(user?.email ?? 'User email');
  }

  Widget _signOutButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () => signOut(context),
      child: const Text('Sign Out'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final User? user = Auth().currentUser; //to show email of current user

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
            _userEmail(user),
            _signOutButton(context),
          ],
        ),
      ),
    );
  }
}
