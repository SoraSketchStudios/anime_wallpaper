class ChatParam {
  String? model;
  int? frequencyPenalty;
  List<MessagesModel>? messages;
  int? maxTokens;
  int? n;
  int? presencePenalty;
  List<String>? stop;
  bool? stream;
  double? temperature;
  int? topP;

  ChatParam({
    this.model,
    this.frequencyPenalty,
    this.messages,
    this.maxTokens,
    this.n,
    this.presencePenalty,
    this.stop,
    this.stream,
    this.temperature,
    this.topP,
  });

  ChatParam.fromJson(Map<String, dynamic> json) {
    if (json['model'] != null) {
      model = json['model'];
    }
    frequencyPenalty = json['frequency_penalty'];
    if (json['messages'] != null) {
      messages = <MessagesModel>[];
      json['messages'].forEach((v) {
        messages!.add(MessagesModel.fromJson(v));
      });
    }
    maxTokens = json['max_tokens'];
    n = json['n'];
    presencePenalty = json['presence_penalty'];
    stop = json['stop'].cast<String>();
    stream = json['stream'];
    temperature = json['temperature'];
    topP = json['top_p'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (model != null) {
      data['model'] = model;
    }
    if (frequencyPenalty != null) {
      data['frequency_penalty'] = frequencyPenalty;
    }
    if (messages != null) {
      data['messages'] = messages!.map((v) => v.toJson()).toList();
    }
    if (maxTokens != null) {
      data['max_tokens'] = maxTokens;
    }
    if (n != null) {
      data['n'] = n;
    }
    if (presencePenalty != null) {
      data['presence_penalty'] = presencePenalty;
    }
    if (stop != null) {
      data['stop'] = stop;
    }
    if (stream != null) {
      data['stream'] = stream;
    }
    if (temperature != null) {
      data['temperature'] = temperature;
    }
    if (topP != null) {
      data['top_p'] = topP;
    }
    return data;
  }
}

class MessagesModel {
  String? role;
  String? content;

  MessagesModel({this.role, this.content});

  MessagesModel.fromJson(Map<String, dynamic> json) {
    role = json['role'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['role'] = role;
    data['content'] = content;
    return data;
  }
}
