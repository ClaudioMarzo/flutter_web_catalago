import 'package:katyfestacatalago/app/domain/entities/user_entity.dart';

abstract class ICreateUserDataSource {
  Future<dynamic> createUserWithEmailAndPassword(UserEntity credentials);
  Future<dynamic> createUserWithGoogleAccount();
}
