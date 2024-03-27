import 'package:katyfestacatalago/app/core/entities/user_entity.dart';
import 'package:katyfestacatalago/app/domain/interfaces/usecases/Iauth_user_usecases.dart';
import 'package:katyfestacatalago/app/domain/interfaces/repositore/Iauth_user_repository.dart';

class AuthUser implements IAuthUserUseCases {
  final IAuthUserRepository _authUserRepository;
  AuthUser(this._authUserRepository);

  @override
  Future<Map<String, dynamic>> signInWithEmailAndPassword(UserEntity credentials) async {
    //Precisar converter o User no tipo UserEntity
    var response = _authUserRepository.signInWithEmailAndPassword(credentials);
    return {"response": response};
  }
}
