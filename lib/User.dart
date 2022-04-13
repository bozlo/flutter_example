import 'package:json_annotation/json_annotation.dart';
import 'package:my_app/Address.dart';
part 'User.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  User(this.name, this.email, this.createdTime, this.address);

  final String name;
  final String email;
  @JsonKey(name: 'created_time')
  final int createdTime;
  final Address address;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}