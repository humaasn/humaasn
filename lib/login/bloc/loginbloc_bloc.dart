import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'loginbloc_event.dart';
part 'loginbloc_state.dart';

class LoginblocBloc extends Bloc<LoginblocEvent, UserInfoState> {
  LoginblocBloc() : super(UserInfoInitial()) {
    on<LoginblocEvent>((event, emit) {
      if(event is DisplayUsername){
        emit(UserInfoState(username: state.username));
      }
    });
  }
}
