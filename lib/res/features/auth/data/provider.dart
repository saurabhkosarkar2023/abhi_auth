import 'package:flutter_auth_1/res/features/auth/data/dio/dio_remote_data_source.dart';
import 'package:flutter_auth_1/res/features/auth/data/remote_data_source.dart';
import 'package:flutter_auth_1/res/features/auth/data/user_repository/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
RemoteDataSource dioRemoteDataSource(DioRemoteDataSourceRef ref) {
  return DioRemoteDataSource();
}

@riverpod
 UserRepository userRepository(UserRepositoryRef ref) {
  final remoteDataSource=ref.watch(dioRemoteDataSourceProvider);
  return UserRepository(remoteDataSource: remoteDataSource);
}