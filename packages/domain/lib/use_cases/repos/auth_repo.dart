abstract class AuthRepo {
  Future<void> signInWithGoogle();
  Future<void> signOut();
}
