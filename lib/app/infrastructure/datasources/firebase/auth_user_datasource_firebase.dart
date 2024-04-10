import 'package:firebase_auth/firebase_auth.dart';
import 'package:katyfestacatalago/app/domain/entities/user_entity.dart';
import 'package:katyfestacatalago/app/infrastructure/datasources/interfaces/Iauth_user_datasource.dart';

class AuthUserDatasourceFirebase implements IAuthUserDataSource {
  final IAuthUserDataSource _firebaseAuth;

  AuthUserDatasourceFirebase(this._firebaseAuth);

  @override
  Future<dynamic> signInWithEmailAndPassword(UserEntity credentials) async {
    try {
      final UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(credentials);
      return userCredential.user!;
    } on FirebaseAuthException catch (e) {
      return e.code;
    } catch (e) {
      return e;
    }
  }
}
