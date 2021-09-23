part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> updateUser(Users user) async {
    String genres = "";

    for (var genre in user.selectedGendres) {
      genres += genre + ((genre != user.selectedGendres.last) ? ',' : '');
    }

    _userCollection.document(user.id).setData({
      'email': user.email,
      'name': user.name,
      'balance': user.balance,
      'selectedGendres': genres,
      'selectedLanguage': user.selectedLanguage,
      'profilePicture': user.profilePicture ?? ""
    });
  }

  static Future<Users> getUser(String id) async {
    DocumentSnapshot snap = await _userCollection.document(id).get();

    return Users(
      id,
      snap.data['email'],
      balance: snap.data['balance'],
      name: snap.data['name'],
    );
  }
}
