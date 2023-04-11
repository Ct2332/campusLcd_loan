import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // static UserCredential? userCredential;

  static Future<void> createNewUser({
    required String email,
    required String password,
  }) async {
    try {
      //create user
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      //send email verification
      // await FirebaseAuth.instance.currentUser!.sendEmailVerification();
      // log('Email verification sent to ${FirebaseAuth.instance.currentUser!.email}');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  // static signInWithEmail() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: "user@demo.com",
  //     password: "123456 xxx",
  //   );
  // }

  static Future<String?> signInWithEmail(String email, String password) async {
    try {
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final User? user = userCredential.user;
      if (user != null) {
        await user
            .reload(); // Reload user to get updated email verification status
        if (user.emailVerified) {
          return user.uid;
        } else {
          await FirebaseAuth.instance
              .signOut(); // Sign out user if email is not verified
          log("Please verify your email before signing in.");
          return "Please verify your email before signing in.";
        }
      } else {
        return null;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log("User not found");
        return "User not found";
      } else if (e.code == 'wrong-password') {
        log("Wrong Password");

        return "Wrong password";
      } else {
        log("Sign in failed. Please try again later.");
        return "Sign in failed. Please try again later.";
      }
    } catch (e) {
      log("An error occurred. Please try again later.");
      return "An error occurred. Please try again later.";
    }
  }
}
