import 'package:katyfestacatalago/app/core/entities/user_entity.dart';

abstract class ICreateUserRepository {
  Future<bool> createUserWithGoogleAccount();
  Future<bool> createUserWithEmailAndPassword(UserEntity credentials);
}
