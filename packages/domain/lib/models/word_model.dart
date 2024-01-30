class WordModel {
  String? id;
  int? count;
  String? uid;
  String? word;
  int? getIt;

  WordModel({this.count, this.uid, this.word, this.getIt, this.id});

  WordModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    id = json['id'];
    uid = json['uid'];
    word = json['word'];
    getIt = json['getIt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['uid'] = uid;
    data['id'] = id;
    data['word'] = word;
    data['getIt'] = getIt;
    return data;
  }
}
