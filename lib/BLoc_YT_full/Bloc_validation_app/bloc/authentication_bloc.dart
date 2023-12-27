import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial()) {
    on<AuthLoginRequeste>((event, emit) async {
      emit(AuthLoding());
      try {
        final email = event.email;
        final password = event.password;

        if (password.length < 6) {
          return emit(AuthFail("Passowrd is greter then 6 digits"));
        }
        await Future.delayed(Duration(seconds: 2), () {
          return emit(AuthSucess(uid: "$email- $password"));
        });
      } catch (e) {
        return emit(AuthFail(e.toString()));
      }

      // TODO: implement event handler
    });
  }
}
