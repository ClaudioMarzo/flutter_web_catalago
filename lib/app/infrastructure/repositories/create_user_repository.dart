import 'package:katyfestacatalago/app/domain/entities/user_entity.dart';
import 'package:katyfestacatalago/app/infrastructure/dtos/sign_up_dto.dart';
import 'package:katyfestacatalago/app/infrastructure/dtos/google_sign_in_dto.dart';
import 'package:katyfestacatalago/app/domain/interfaces/repositore/Icreate_user_repository.dart';
import 'package:katyfestacatalago/app/infrastructure/datasources/interfaces/Icreate_user_datasource.dart';

class CreateUserRepository extends ICreateUserRepository {
  final SignUpDto _signUpDto;
  final GoogleSignInDto _googleSignInDto;
  final ICreateUserDataSource _dataSource;

  CreateUserRepository(this._signUpDto, this._googleSignInDto, this._dataSource);

  @override
  Future<bool> createUserWithEmailAndPassword(UserEntity credentials) async {
    SignUpDto signUpDto = _signUpDto.copyWith(
      emailSignUp: credentials.email,
      passwordSingUp: credentials.senha,
    );
    var response = await _dataSource.createUserWithEmailAndPassword(signUpDto);
    if (response != null) {
      return true;
    }
    return false;
  }

  @override
  Future<bool> createUserWithGoogleAccount() async {
    var response = await _dataSource.createUserWithGoogleAccount();
    if (response == null) {
      return false;
    }
    _googleSignInDto.copyWith(
      name: response.displayName,
      photo: response.photoURL,
    );
    return true;
  }
}
