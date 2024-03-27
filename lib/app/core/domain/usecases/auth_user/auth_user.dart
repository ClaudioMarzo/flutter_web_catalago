import 'package:katyfestacatalago/app/core/domain/repositore/Iauth_user_repository.dart';
import 'package:katyfestacatalago/app/core/domain/usecases/auth_user/Iauth_user.dart';

class AuthUser implements IAuthUser {
  final IAuthUserRepository _authUserRepository;
  AuthUser(this._authUserRepository);

  @override
  Future<Map<String, dynamic>> signInWithEmailAndPassword(String email, String senha) async {
    var response = await _authUserRepository.signInWithEmailAndPassword(email, senha);
    return response;
  }
}
