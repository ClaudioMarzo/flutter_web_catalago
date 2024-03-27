abstract class ILoginUser {
  Future<Map<String, dynamic>> signInWithEmailAndPassword(String email, String senha);
}
