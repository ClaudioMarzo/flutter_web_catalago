import 'package:katyfestacatalago/app/core/entities/user_entity.dart';

abstract class IAuthUserUseCases {
  Future<Map<String, dynamic>> signInWithEmailAndPassword(UserEntity credentials);
}
