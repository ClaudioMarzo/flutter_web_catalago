abstract class IAuthState {}

class AuthLoading implements IAuthState {
  const AuthLoading();
}

class AuthSucess implements IAuthState {
  AuthSucess();
}

class AuthErro implements IAuthState {
  final String message;
  AuthErro(this.message);
}
