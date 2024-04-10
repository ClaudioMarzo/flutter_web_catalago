import 'package:firebase_auth/firebase_auth.dart';
import 'package:katyfestacatalago/app/domain/entities/user_entity.dart';
import 'package:katyfestacatalago/app/infrastructure/datasources/interfaces/Icreate_user_datasource.dart';

class CreateUserDatasourceFirebase implements ICreateUserDataSource {
  final FirebaseAuth _firebaseAuth;
  final GoogleAuthProvider _googleProvider;

  CreateUserDatasourceFirebase(this._firebaseAuth, this._googleProvider);

  @override
  Future<dynamic> createUserWithEmailAndPassword(UserEntity credentials) async {
    try {
      final UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(email: credentials.email, password: credentials.senha);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      return e.code;
    } catch (e) {
      return e;
    }
  }

  @override
  Future<dynamic> createUserWithGoogleAccount() async {
    try {
      final UserCredential userCredential = await _firebaseAuth.signInWithPopup(_googleProvider);
      return userCredential.user!;
    } on FirebaseAuthException catch (e) {
      return e.code;
    } catch (e) {
      return null;
    }
  }
}
