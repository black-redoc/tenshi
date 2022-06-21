abstract class LoginRepository {
  Future signIn(Map<String, dynamic> args) async {}
  Future<dynamic> signUp(Map<String, dynamic> args);
}
