import 'package:katyfestacatalago/app/core/domain/repositore/Icreate_user_repository.dart';
import 'package:katyfestacatalago/app/core/domain/usecases/create_user/Icreate_user.dart';

class CreateUser implements ICreateUser {
  final ICreateUserRepository _createUserRepository;
  CreateUser(this._createUserRepository);

  @override
  Future<Map<String, dynamic>> createUserWithGoogleAccount() async {
    var response = await _createUserRepository.createUserWithGoogleAccount();
    return response;
  }

  @override
  Future<Map<String, dynamic>> createUserWithEmailAndPassword(String email, String senha) async {
    var response = await _createUserRepository.createUserWithEmailAndPassword(email, senha);
    return response;
  }
}
