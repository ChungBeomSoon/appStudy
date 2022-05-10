import 'package:json_annotation/json_annotation.dart';
import 'package:json_practice/address.dart';

part 'user.g.dart'; // user.g.dart 만들기 위해 넣어줘야함.

@JsonSerializable(explicitToJson: true) //user.g.dart 만들기 위해 넣어줘야함
class User {
  final String name;
  final String email;
  @JsonKey(name: 'id_time') // id_time을 idTime에 할당하기
  final int idTime;
  final Address address;

  User(this.name, this.email, this.idTime, this.address);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
