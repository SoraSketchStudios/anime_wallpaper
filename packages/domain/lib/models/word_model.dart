class WordModel {
  int? count;
  String? uid;
  String? word;

  WordModel({this.count, this.uid, this.word});

  WordModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    uid = json['uid'];
    word = json['word'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['uid'] = uid;
    data['word'] = word;
    return data;
  }
}
