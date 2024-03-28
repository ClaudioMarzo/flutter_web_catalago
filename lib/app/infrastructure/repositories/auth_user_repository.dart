import 'package:katyfestacatalago/app/domain/entities/user_entity.dart';
import 'package:katyfestacatalago/app/infrastructure/dtos/login_dto.dart';
import 'package:katyfestacatalago/app/domain/interfaces/repositore/Iauth_user_repository.dart';
import 'package:katyfestacatalago/app/infrastructure/datasources/interfaces/Iauth_user_datasource.dart';

class AuthUserRepository extends IAuthUserRepository {
  final LoginDto _loginDto;
  final IAuthUserDataSource _dataSource;
  AuthUserRepository(this._dataSource, this._loginDto);

  @override
  Future<bool> signInWithEmailAndPassword(UserEntity credentials) async {
    LoginDto credentialDto = _loginDto.copyWith(
      emailLogin: credentials.email,
      passwordLogin: credentials.senha,
    );
    var response = await _dataSource.signInWithEmailAndPassword(credentialDto);
    if (response!.email == null && response.emailVerified == true) {
      return true;
    }
    return false;
  }
}
