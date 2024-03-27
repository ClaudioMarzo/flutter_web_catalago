import 'package:katyfestacatalago/app/core/entities/user_entity.dart';

abstract class IAuthUserRepository {
  bool signInWithEmailAndPassword(UserEntity credentials);
}
