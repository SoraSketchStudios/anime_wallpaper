class ImageCharacterModel {
  String? id;
  String? characterId;
  String? linkUrl;
  int? price;

  ImageCharacterModel({this.id, this.characterId, this.linkUrl, this.price});

  ImageCharacterModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    characterId = json['characterId'];
    linkUrl = json['linkUrl'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['characterId'] = characterId;
    data['linkUrl'] = linkUrl;
    data['price'] = price;
    return data;
  }
}
