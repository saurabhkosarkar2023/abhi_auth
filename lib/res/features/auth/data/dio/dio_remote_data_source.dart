import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_auth_1/res/features/auth/data/remote_data_source.dart';
import 'package:flutter_auth_1/res/features/auth/model/user.dart';

class DioRemoteDataSource extends RemoteDataSource
{
   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  
 
  @override
  Future<UserData> signIn(String email, String password) async {
    try {
      // Sign in with Firebase
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Retrieve the token
      String? token = await userCredential.user?.getIdToken();

      // Return the User object
      return UserData(
        email: email,
        token: token ?? "",
      );
    } catch (e) {
      // Handle errors (e.g., invalid credentials)
      throw Exception('Failed to sign in: $e');
    }
  }
}
