import 'package:dio/dio.dart';
import 'package:dio_app/login/model/model.dart';

class Service{
   @override
  Future<UserInfo?> GetLoginEvent(String userid, String passwd) async {
    final api = 'https://fakestoreapi.com/auth/login';
    final data = {"userid": userid, "passwd": passwd};

    final dio = Dio();
    Response response;

    response = await dio.post(api, data: data);
    if (response.statusCode == 200) {
      final body = response.data;
      
      return UserInfo(username: "username");
      
      //return UserInfo(username: "username") ; //,token: body['token'
    } else {
      return null;
    }
  }

}

  