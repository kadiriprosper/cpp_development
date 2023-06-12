import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  registerWithEmailandPass(
    String email,
    String password,
    String firstName,
    String lastName,
  ) async {
    UserCredential userCredential;
    try {
      userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      userCredential.user?.updateDisplayName('$firstName $lastName');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'Password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'Account already exists for that email';
      } else {
        return 'error occured';
      }
    }
    return userCredential.user?.displayName;
  }

  loginWithEmailandPass(
    String email,
    String password,
  ) async {
    UserCredential userCredential;
    try {
      userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'User does not exist for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Incorrect password';
      } else {
        return 'error occured';
      }
    }
    return userCredential.user?.displayName;
  }

  Future<String> logOut() async {
    await firebaseAuth.signOut();
    return 'Success';
  }

  Future<String> updateUsername(
    String username,
  ) async {
    try {
      firebaseAuth.currentUser?.updateDisplayName(username);
    } catch (e) {
      return 'error occured';
    }
    return 'Success';
  }

  Future<String> updateDisplayName(
    String email,
    String password,
    String? username,
  ) async {
    //TODO: Try to do this stuff for all the updates by sending old passwords
    //TODO: --with the controller or holding the new updates in a temporary
    //TODO: variable while asking for the old password
    AuthCredential credential = EmailAuthProvider.credential(
      email: email,
      password: password,
    );
    try {
      firebaseAuth.currentUser?.reauthenticateWithCredential(credential);
      firebaseAuth.currentUser
          ?.updateEmail(email ?? firebaseAuth.currentUser!.email!);
      firebaseAuth.currentUser?.updatePassword(password);
      firebaseAuth.currentUser?.updateDisplayName(
          username ?? firebaseAuth.currentUser?.displayName);
    } catch (e) {
      return 'error occured';
    }
    return 'Success';
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return firebaseAuth.signInWithCredential(credential);
  }

  Future<UserCredential> signInWithApple() async {
    final appleProvider = AppleAuthProvider();
    if (kIsWeb) {
      return FirebaseAuth.instance.signInWithPopup(appleProvider);
    } else {
      return FirebaseAuth.instance.signInWithProvider(appleProvider);
    }
  }
}
