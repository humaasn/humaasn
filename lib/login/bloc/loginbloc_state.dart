part of 'loginbloc_bloc.dart';

class UserInfoState{
  String username;

  UserInfoState({
    required this.username
  });
}

class UserInfoInitial extends UserInfoState{
  UserInfoInitial() : super(username : "");
}
