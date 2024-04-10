import 'package:katyfestacatalago/app/domain/interfaces/repositore/Icreate_user_repository.dart';
import 'package:katyfestacatalago/app/infrastructure/datasources/interfaces/Icreate_user_datasource.dart';

class CreateUserRepository extends ICreateUserRepository {
  final ICreateUserDataSource _dataSource;

  CreateUserRepository(this._dataSource);

  @override
  Future<String> createUserWithGoogleAccount() async {
    var response = await _dataSource.createUserWithGoogleAccount();
    if (response == 'popup-closed-by-user') {
      return response;
    }
    return response;
  }
}
