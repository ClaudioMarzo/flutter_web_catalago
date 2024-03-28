import 'package:firebase_auth/firebase_auth.dart';
import 'package:katyfestacatalago/app/infrastructure/dtos/login_dto.dart';

abstract class IAuthUserDataSource {
  Future<User?> signInWithEmailAndPassword(LoginDto credentials);
}
