import 'package:katyfestacatalago/app/core/entities/user_entity.dart';
import 'package:katyfestacatalago/app/domain/interfaces/repositore/Icreate_user_repository.dart';

class CreateUserRepository extends ICreateUserRepository {
  @override
  Future<bool> createUserWithEmailAndPassword(UserEntity credentials) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<bool> createUserWithGoogleAccount() {
    // TODO: implement createUserWithGoogleAccount
    throw UnimplementedError();
  }
}
