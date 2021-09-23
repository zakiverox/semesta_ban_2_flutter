part of 'extensions.dart';

extension FirebaseUserExtension on UserCredential {
  Users convertToUser(
          {String name = "no name",
          List<String> selectedGenres = const [],
          String selectedLanguage = "English",
          int balance = 50000}) =>
      Users(this.user.uid, this.user.email,
          name: name,
          selectedGendres: selectedGenres,
          selectedLanguage: selectedLanguage,
          balance: balance);

  Future<Users> fromFirestore() async =>
      await UserServices.getUser(this.user.uid);
}
