class HistoryWordModel {
  bool? isGotIt;
  DateTime? time;
  String? uid;
  String? word;

  HistoryWordModel({this.isGotIt, this.time, this.uid, this.word});

  HistoryWordModel.fromJson(Map<String, dynamic> json) {
    isGotIt = json['isGotIt'];
    time = json['time'].toDate();
    uid = json['uid'];
    word = json['word'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isGotIt'] = isGotIt;
    data['time'] = time;
    data['uid'] = uid;
    data['word'] = word;
    return data;
  }
}
