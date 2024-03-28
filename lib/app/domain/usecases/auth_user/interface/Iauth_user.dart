import 'package:katyfestacatalago/app/domain/entities/user_entity.dart';

abstract class IAuthUser {
  Future<Map<String, dynamic>> signInWithEmailAndPassword(UserEntity credentials);
}
