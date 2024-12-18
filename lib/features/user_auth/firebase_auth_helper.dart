import 'package:firebase_auth/firebase_auth.dart';

import 'auth_exception_handler.dart';
import 'auth_status_enum.dart';

class FirebaseAuthHelper {
  final _auth = FirebaseAuth.instance;
  AuthResultStatus _status = AuthResultStatus.undefined;

  Future<AuthResultStatus> createAccount(
      {required String email, required String pass}) async {
    try {
      UserCredential authResult = await _auth.createUserWithEmailAndPassword(
          email: email, password: pass);
      if (authResult.user != null) {
        _status = AuthResultStatus.successful;
      } else {
        _status = AuthResultStatus.undefined;
      }
    } catch (e) {
      print('Exception @createAccount: $e');
      // Cast the exception to FirebaseAuthException
      _status =
          AuthExceptionHandler.handleException(e as FirebaseAuthException);
    }
    return _status;
  }

  Future<AuthResultStatus> login(
      {required String email, required String pass}) async {
    try {
      final authResult =
          await _auth.signInWithEmailAndPassword(email: email, password: pass);

      if (authResult.user != null) {
        _status = AuthResultStatus.successful;
      } else {
        _status = AuthResultStatus.undefined;
      }
    } catch (e) {
      print('Exception @createAccount: $e');
      // Cast the exception to FirebaseAuthException
      _status =
          AuthExceptionHandler.handleException(e as FirebaseAuthException);
    }
    return _status;
  }

  logout() {
    _auth.signOut();
  }
}
