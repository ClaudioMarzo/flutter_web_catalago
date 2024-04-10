import 'package:katyfestacatalago/app/domain/interfaces/usecases/Icreate_user_usecases.dart';
import 'package:katyfestacatalago/app/domain/interfaces/repositore/Icreate_user_repository.dart';

class CreateUser implements ICreateUserUseCases {
  final ICreateUserRepository _createUserRepository;
  CreateUser(this._createUserRepository);

  @override
  Future<Map<String, dynamic>> createUserWithGoogleAccount() async {
    //Precisar converter o User no tipo UserEntity
    var response = await _createUserRepository.createUserWithGoogleAccount();
    return {"response": response};
  }
}
