import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  //create user object based on email and password
  User? get currentUser => _firebaseAuth.currentUser;
  Stream<User?> get user => _firebaseAuth.authStateChanges();

  get authStateChanges => null;
  //sign up with email and password
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  //sign up with email and password
  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

//logout from the app
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
