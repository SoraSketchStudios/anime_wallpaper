import 'package:data/firebase_server/firebase_service/auth_service.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepo)
class AuthRepoImp implements AuthRepo {
  final AuthService authService;

  AuthRepoImp(this.authService);

  @override
  Future<void> signInWithGoogle() async {
    await authService.loginWithGoogle();
  }

  @override
  Future<void> signOut() async {
    await authService.logOut();
  }
}
