import 'package:katyfestacatalago/app/core/domain/usecases/create_user/Icreate_user.dart';

class CreateUser implements ICreateUser {
  @override
  Future<Map<String, dynamic>> createUserWithEmailAndPassword(String email, String senha) {
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> createUserWithGoogleAccount() {
    throw UnimplementedError();
  }
}
