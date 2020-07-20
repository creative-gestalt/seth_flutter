import 'package:firebase_database/firebase_database.dart';

class QuoteApiProvider {
  DatabaseReference _firebase = FirebaseDatabase.instance.reference();

  Stream<void> fetchQuoteList(String uid) {
    return _firebase.orderByKey().equalTo(uid).onValue;
  }
}
