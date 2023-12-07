import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:domain/domain.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import 'history_word_service.dart';

@injectable
class WordService {
  final store = FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>> _getCollection() {
    return store.collection('words');
  }

  Future<String> addItem(String word) async {
    HistoryWordService().addItem(word);
    final data = await _getCollection()
        .where(
          "uid",
          isEqualTo: FirebaseAuth.instance.currentUser?.uid,
        )
        .where(
          "word",
          isEqualTo: word,
        )
        .get();

    final res = data.docs;
    if (res.isEmpty) {
      await _getCollection().add({
        "uid": FirebaseAuth.instance.currentUser?.uid,
        "count": 1,
        "word": word,
      });
    } else {
      await _getCollection().doc(res.first.id).set({
        "uid": FirebaseAuth.instance.currentUser?.uid,
        "count": res.first.data()["count"] + 1,
        "word": word,
      });
    }
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

  Future<List<WordModel>?> getItems() async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid != null) {
      final res = await _getCollection()
          .where(
            "uid",
            isEqualTo: uid,
          )
          .where("count", isGreaterThan: 1)
          .get();
      List<WordModel> datas =
          res.docs.map((e) => WordModel.fromJson(e.data())).toList();
      return datas;
    }
    return [];
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
