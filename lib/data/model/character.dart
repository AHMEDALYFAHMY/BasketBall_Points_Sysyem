// ignore_for_file: unnecessary_this, prefer_collection_literals

class Character {
  late int id;
  late String name;
  late String status;
  late String species;
  late String type;
  late String gender;
   Origin? origin;
   Origin? location;
  late String image;
  late List<String> episode;
  late String url;
  late String created;

  Character.fromJson(json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    species = json['species'];
    type = json['type'];
    gender = json['gender'];
    // origin = json['origin'] != null  Origin.fromJson(json['origin']) : null;
    // location =
    //     json['location'] != null  Origin.fromJson(json['location']) : null;
    image = json['image'];
    episode = json['episode'].cast<String>();
    url = json['url'];
    created = json['created'];
  }
}

class Origin {
  String? name;
  String? url;

  Origin({this.name, this.url});

  Origin.fromJson(json) {
    name = json['name'];
    url = json['url'];
  }
}
