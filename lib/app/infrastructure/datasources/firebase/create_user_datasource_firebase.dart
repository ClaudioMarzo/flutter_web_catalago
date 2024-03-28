import 'package:firebase_auth/firebase_auth.dart';
import 'package:katyfestacatalago/app/infrastructure/dtos/sign_up_dto.dart';
import 'package:katyfestacatalago/app/infrastructure/datasources/interfaces/Icreate_user_datasource.dart';

class CreateUserDatasourceFirebase implements ICreateUserDataSource {
  final FirebaseAuth _firebaseAuth;
  final GoogleAuthProvider _googleProvider;

  CreateUserDatasourceFirebase(this._firebaseAuth, this._googleProvider);

  @override
  Future<User?> createUserWithEmailAndPassword(SignUpDto credentials) async {
    try {
      final UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(email: credentials.email, password: credentials.senha);
      return userCredential.user;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<User?> createUserWithGoogleAccount() async {
    try {
      final UserCredential userCredential = await _firebaseAuth.signInWithPopup(_googleProvider);
      return userCredential.user!;
    } catch (e) {
      return null;
    }
  }
}
