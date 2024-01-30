class TraCauModel {
  String? language;
  List<Sentences>? sentences;
  List<Tratu>? tratu;

  TraCauModel({this.language, this.sentences, this.tratu});

  TraCauModel.fromJson(Map<String, dynamic> json) {
    language = json['language'];
    if (json['sentences'] != null) {
      sentences = <Sentences>[];
      json['sentences'].forEach((v) {
        sentences!.add(new Sentences.fromJson(v));
      });
    }
    if (json['tratu'] != null) {
      tratu = <Tratu>[];
      json['tratu'].forEach((v) {
        tratu!.add(new Tratu.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['language'] = this.language;
    if (this.sentences != null) {
      data['sentences'] = this.sentences!.map((v) => v.toJson()).toList();
    }
    if (this.tratu != null) {
      data['tratu'] = this.tratu!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sentences {
  String? sId;
  Fields? fields;

  Sentences({this.sId, this.fields});

  Sentences.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    fields =
        json['fields'] != null ? new Fields.fromJson(json['fields']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    if (this.fields != null) {
      data['fields'] = this.fields!.toJson();
    }
    return data;
  }
}

class Tratu {
  Fields? fields;

  Tratu({this.fields});

  Tratu.fromJson(Map<String, dynamic> json) {
    fields =
        json['fields'] != null ? new Fields.fromJson(json['fields']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.fields != null) {
      data['fields'] = this.fields!.toJson();
    }
    return data;
  }
}

class Fields {
  String? en;
  String? vi;
  String? fulltext;
  String? kinds;
  String? word;

  Fields({this.en, this.vi, this.fulltext, this.kinds, this.word});

  Fields.fromJson(Map<String, dynamic> json) {
    en = json['en'];
    vi = json['vi'];
    fulltext = json['fulltext'];
    kinds = json['kinds'];
    word = json['word'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['en'] = this.en;
    data['vi'] = this.vi;
    data['fulltext'] = this.fulltext;
    data['kinds'] = this.kinds;
    data['word'] = this.word;
    return data;
  }
}
