abstract class IAuthUser {
  Future<Map<String, dynamic>> signInWithEmailAndPassword(String email, String senha);
}
