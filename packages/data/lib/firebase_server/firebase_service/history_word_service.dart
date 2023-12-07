import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:domain/models/history_word_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class HistoryWordService {
  final store = FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>> _getCollection() {
    return store.collection('history_words');
  }

  Future<String> addItem(String word) async {
    await _getCollection().add({
      "uid": FirebaseAuth.instance.currentUser?.uid,
      "word": word,
      "time": DateTime.now(),
      "isGotIt": false,
    });
    return "";
    // return await _getCollection().add().then((value) => value.id);
  }

  Future<bool> changeNameItem(id, String textEdit) async {
    try {
      await _getCollection().doc(id).update({"name": textEdit});
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> changeDate(id, DateTime dateTime) async {
    try {
      await _getCollection().doc(id).update({"createdAt": dateTime.toString()});
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteItem(id) async {
    try {
      await _getCollection().doc(id).delete();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<List<HistoryWordModel>> listHistoryWord(String word) async {
    final List<HistoryWordModel> listHistory = await _getCollection()
        .where("word", isEqualTo: word)
        .get()
        .then((value) => value.docs
            .map((e) => HistoryWordModel.fromJson(e.data()))
            .toList());

    return listHistory;
  }

// Future<WordModel?> getItem(idChat) async {
//   return await _getCollection().doc(idChat).get().then(
//         (value) => Chat.fromJson(value.data() ?? {}).copyWith(id: value.id),
//       );
// }
//
// Future<List<WordModel>> getListData() async {
//   return await _getCollection()
//       .where("uuid", isEqualTo: FirebaseAppAuth.user?.uid)
//       .get()
//       .then((value) {
//     List<Chat> result = value.docs
//         .map((e) => Chat.fromJson(e.data()).copyWith(id: e.id))
//         .toList();
//     result.sort(
//       (e1, e2) => e2.createdAt!.millisecondsSinceEpoch.compareTo(
//         e1.createdAt!.millisecondsSinceEpoch,
//       ),
//     );
//     return result;
//   });
// }
}
