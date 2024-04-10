import 'package:katyfestacatalago/app/domain/entities/user_entity.dart';

class SignUpDto extends UserEntity {
  SignUpDto({
    required super.email,
    required super.senha,
  });

  SignUpDto copyWith({String? email, String? senha}) {
    return SignUpDto(
      email: _validateEmail(email!) ? email : email,
      senha: senha!,
    );
  }

  static bool _validateEmail(String email) {
    final RegExp emailRegex = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    return emailRegex.hasMatch(email);
  }
}
