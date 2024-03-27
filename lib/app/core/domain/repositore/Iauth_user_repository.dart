abstract class IAuthUserRepository {
  Future<Map<String, dynamic>> signInWithEmailAndPassword(String email, String senha);
}
