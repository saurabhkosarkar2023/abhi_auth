import 'package:flutter_auth_1/res/features/auth/data/provider.dart';
import 'package:flutter_auth_1/res/features/auth/model/user.dart';
import 'package:flutter_auth_1/res/features/auth/ui/sigin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier  {
  Future<UserData> signIn({required String email, required String password}) async{
    final respose=await ref.watch(userRepositoryProvider).signIn(email: email, password: password);
    return respose;
  }
  @override
   build() {
    return const Signin();
  }

}