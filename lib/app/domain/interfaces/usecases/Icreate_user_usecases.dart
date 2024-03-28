import 'package:katyfestacatalago/app/domain/entities/user_entity.dart';

abstract class ICreateUserUseCases {
  Future<Map<String, dynamic>> createUserWithGoogleAccount();
  Future<Map<String, dynamic>> createUserWithEmailAndPassword(UserEntity credentials);
}
