import 'package:katyfestacatalago/app/domain/entities/user_entity.dart';

abstract class IAuthUserRepository {
  Future<bool> signInWithEmailAndPassword(UserEntity credentials);
}
