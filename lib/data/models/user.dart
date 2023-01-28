import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User{
  const factory User({
    required final String id,
    required final String username,
    final String? photoUrl,
    @JsonValue(false)
    @Default(false)
    final bool active,
    required final DateTime lastSeen,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}