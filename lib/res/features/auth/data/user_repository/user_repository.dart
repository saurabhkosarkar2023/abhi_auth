import 'package:flutter_auth_1/res/features/auth/data/remote_data_source.dart';
import 'package:flutter_auth_1/res/features/auth/model/user.dart';

class UserRepository {
  final RemoteDataSource remoteDataSource;
  UserRepository({required this.remoteDataSource});
  
  Future<UserData> signIn({required String email,required String password,}){
    return remoteDataSource.signIn(email, password);
  }

  
}