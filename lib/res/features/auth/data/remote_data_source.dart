import 'package:flutter_auth_1/res/features/auth/model/user.dart';

abstract class RemoteDataSource
{
  Future<UserData> signIn(String email, String password);
}