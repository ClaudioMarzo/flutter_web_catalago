import 'package:firebase_auth/firebase_auth.dart';
import 'package:katyfestacatalago/app/infrastructure/dtos/login_dto.dart';
import 'package:katyfestacatalago/app/infrastructure/datasources/interfaces/Iauth_user_datasource.dart';

class AuthUserDatasourceFirebase implements IAuthUserDataSource {
  final FirebaseAuth _firebaseAuth;

  AuthUserDatasourceFirebase(this._firebaseAuth);

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
