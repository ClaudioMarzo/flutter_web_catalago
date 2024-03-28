class GoogleSignInDto {
  String name;
  String photo;

  GoogleSignInDto({
    required this.name,
    required this.photo,
  });

  GoogleSignInDto copyWith({String? name, String? photo}) {
    return GoogleSignInDto(
      name: name ?? this.name,
      photo: photo ?? this.photo,
    );
  }
}
