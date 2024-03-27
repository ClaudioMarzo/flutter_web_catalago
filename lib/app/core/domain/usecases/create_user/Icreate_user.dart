abstract class ICreateUser {
  Future<Map<String, dynamic>> createUserWithGoogleAccount();
  Future<Map<String, dynamic>> createUserWithEmailAndPassword(String email, String senha);
}
