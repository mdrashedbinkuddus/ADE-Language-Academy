import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ADELanguageAcademyFirebaseUser {
  ADELanguageAcademyFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

ADELanguageAcademyFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ADELanguageAcademyFirebaseUser> aDELanguageAcademyFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ADELanguageAcademyFirebaseUser>(
            (user) => currentUser = ADELanguageAcademyFirebaseUser(user));
