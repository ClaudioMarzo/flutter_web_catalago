import 'package:firebase_auth/firebase_auth.dart';
import 'package:katyfestacatalago/app/data/dtos/login_dto.dart';
import 'package:katyfestacatalago/app/data/interfaces/Iauth_user_datasource.dart';

class AuthUserFirebaseDatasource implements IAuthUserDataSource {
  final FirebaseAuth _firebaseAuth;

  AuthUserFirebaseDatasource(this._firebaseAuth);

  @override
  Future<User?> signInWithEmailAndPassword(LoginDto credentials) async {
    try {
      final UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: credentials.email, password: credentials.senha);
      return userCredential.user!;
    } catch (e) {
      return null;
    }
  }
}
