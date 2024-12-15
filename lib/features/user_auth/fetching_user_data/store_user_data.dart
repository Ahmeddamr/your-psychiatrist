import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

storeNewUser(
    user, String email, String password, String username, String phone) async {
  var firebaseUser = await FirebaseAuth.instance.currentUser!;
  FirebaseFirestore.instance
      .collection('users')
      .doc(firebaseUser.uid)
      .set({
        'email': email,
        'password': password,
        'uid': user.uid,
        'username': username,
        'phone': phone,
      })
      .then((value) {})
      .catchError((e) {
        print(e);
      });
}
