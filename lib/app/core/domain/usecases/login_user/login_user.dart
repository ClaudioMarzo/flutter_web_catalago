import 'package:katyfestacatalago/app/core/domain/usecases/login_user/Ilogin_user.dart';

class Login implements ILoginUser {
  @override
  Future<Map<String, dynamic>> signInWithEmailAndPassword(String email, String senha) {
    throw UnimplementedError();
  }
}
