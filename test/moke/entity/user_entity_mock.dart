import 'package:katyfestacatalago/app/domain/entities/user_entity.dart';

class UserEntityFake {
  static UserEntity userFake() {
    return UserEntity(
      email: "claudio@gmail.com",
      senha: "8486",
    );
  }

  static UserEntity copyWith(String email, String senha) {
    return UserEntity(email: email, senha: senha);
  }
}
