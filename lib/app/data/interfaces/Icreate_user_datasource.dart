import 'package:firebase_auth/firebase_auth.dart';
import 'package:katyfestacatalago/app/data/dtos/sign_up_dto.dart';

abstract class ICreateUserDataSource {
  Future<User?> createUserWithEmailAndPassword(SignUpDto credentials);
  Future<User?> createUserWithGoogleAccount();
}
