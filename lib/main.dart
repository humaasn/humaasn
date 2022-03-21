import 'package:dio_app/login/bloc/loginbloc_bloc.dart';
import 'package:dio_app/login/model/model.dart';
import 'package:dio_app/login/viewmodel/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Service _login = Service();
  TextEditingController _idcontroller = TextEditingController();
  TextEditingController _pwcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginblocBloc, UserInfoState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _idcontroller,
                ),
                TextField(
                  controller: _pwcontroller,
                ),
                ElevatedButton(
                    onPressed: () async {
                      UserInfo? user = await _login.GetLoginEvent(
                          _idcontroller.text, _pwcontroller.text);
                      state.username = user as String;
                    },
                    child: Text("로그인"))
              ],
            ),
          ),
        );
      },
    );
  }
}
