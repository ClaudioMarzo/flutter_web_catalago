import 'package:katyfestacatalago/app/domain/entities/user_entity.dart';

abstract class IAuthUserDataSource {
  Future<dynamic> signInWithEmailAndPassword(UserEntity credentials);
}
