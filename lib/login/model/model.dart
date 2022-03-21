import 'package:json_annotation/json_annotation.dart';

part 'userinfo.g.dart';

@JsonSerializable()

class UserInfo{
  //String userid;
  //String passwd;
  String username;
  //String token;
  UserInfo({
    //required this.userid,
    //required this.passwd,
    required this.username, 
    // required this.token,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);


  Map<String, dynamic> toJson() => _$UserInfoToJson(this);


}
