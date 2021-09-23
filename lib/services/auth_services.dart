part of 'services.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<SignInResult> signUp(String email, String password, String name,
      List<String> selectedGenres, String selectedLanguage) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Users user = result.convertToUser(
          name: name,
          selectedGenres: selectedGenres,
          selectedLanguage: selectedLanguage);

      await UserServices.updateUser(user);
      return SignInResult(user: user);
    } catch (e) {
      return SignInResult(message: e.toString().split(',')[1]);
    }
  }

  static Future<SignInResult> sigIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      Users user = await result.fromFirestore();
      return SignInResult(user: user);
    } catch (e) {
      return SignInResult(message: e.toString().split(',')[1]);
    }
  }

  static Future<void> signOut() async {
    await _auth.signOut();
  }

  static Stream<User> get userstream => _auth.authStateChanges();
}

class SignInResult {
  final Users user;
  final String message;

  SignInResult({this.user, this.message});
}
