import 'package:katyfestacatalago/app/domain/entities/user_entity.dart';

class LoginDto extends UserEntity {
  String emailLogin;
  String passwordLogin;

  LoginDto({
    required this.emailLogin,
    required this.passwordLogin,
  }) : super(
          email: emailLogin,
          senha: passwordLogin,
        );

  LoginDto copyWith({String? emailLogin, String? passwordLogin}) {
    return LoginDto(
      emailLogin: emailLogin ?? this.emailLogin,
      passwordLogin: passwordLogin ?? this.passwordLogin,
    );
  }
}
