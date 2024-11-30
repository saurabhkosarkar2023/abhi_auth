
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required  String email,
    required String token,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) => _$UserDataFromJson(json);
  
}