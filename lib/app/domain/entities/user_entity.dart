class UserEntity {
  String email;
  String senha;

  UserEntity({
    required this.email,
    required this.senha,
  });

  UserEntity copyWith({String? email, String? senha}) {
    return UserEntity(
      email: _validateEmail(email!) ? email : throw ('Email inválido'),
      senha: senha ?? this.senha,
    );
  }

  static bool _validateEmail(String email) {
    final RegExp emailRegex = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    return emailRegex.hasMatch(email);
  }
}
