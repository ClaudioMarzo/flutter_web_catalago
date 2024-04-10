import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:katyfestacatalago/app/domain/entities/user_entity.dart';
import 'package:katyfestacatalago/app/presentation/bloc/auth/auth_state.dart';
import 'package:katyfestacatalago/app/infrastructure/datasources/interfaces/Iauth_user_datasource.dart';

class AuthBloc extends Bloc<UserEntity, IAuthState> {
  final IAuthUserDataSource _authUserDataSource;

  AuthBloc(this._authUserDataSource) : super(AuthSucess()) {
    on<UserEntity>(
      (event, emit) async {
        emit(const AuthLoading());
        await Future.delayed(const Duration(milliseconds: 500));

        final credentials = UserEntity(
          email: event.email,
          senha: event.senha,
        );

        var data = await _authUserDataSource.signInWithEmailAndPassword(credentials);

        if (data == 'user-not-found') {
          emit(AuthErro('Usuário não encontrado'));
        } else if (data == 'wrong-password') {
          emit(AuthErro('Credenciais incorretas!!'));
        } else if (FirebaseAuth.instance.currentUser != null) {
          emit(AuthSucess());
        } else {
          emit(AuthErro('Erro ao autenticar'));
        }
      },
    );
  }
}
