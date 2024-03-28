import 'package:katyfestacatalago/app/domain/entities/user_entity.dart';

class SignUpDto extends UserEntity {
  String emailSignUp;
  String passwordSingUp;

  SignUpDto({
    required this.emailSignUp,
    required this.passwordSingUp,
  }) : super(
          email: emailSignUp,
          senha: passwordSingUp,
        );

  SignUpDto copyWith({String? emailSignUp, String? passwordSingUp}) {
    return SignUpDto(
      emailSignUp: emailSignUp ?? this.emailSignUp,
      passwordSingUp: passwordSingUp ?? this.passwordSingUp,
    );
  }
}
