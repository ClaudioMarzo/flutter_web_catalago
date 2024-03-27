// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:katyfestacatalago/app/core/entities/user_entity.dart';

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
