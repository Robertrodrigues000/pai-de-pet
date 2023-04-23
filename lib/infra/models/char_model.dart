import 'dart:convert';

import 'package:rickandmorty/domain/entitites/char_entity.dart';
import 'package:rickandmorty/infra/models/location_model.dart';

CharModel welcomeFromJson(String str) => CharModel.fromJson(json.decode(str));

String welcomeToJson(CharModel data) => json.encode(data.toJson());

class CharModel extends CharEntity {
  const CharModel({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required LocationModel origin,
    required LocationModel location,
    required String image,
    required List<String> episode,
    required String url,
    required DateTime created,
  }) : super(
          id: id,
          name: name,
          status: status,
          species: species,
          type: type,
          gender: gender,
          origin: origin,
          created: created,
          episode: episode,
          image: image,
          location: location,
          url: url,
        );

  factory CharModel.fromJson(Map<String, dynamic> json) => CharModel(
        id: json["id"],
        name: json["name"],
        status: json["status"],
        species: json["species"],
        type: json["type"],
        gender: json["gender"],
        origin: LocationModel.fromJson(json["origin"]),
        location: LocationModel.fromJson(json["location"]),
        image: json["image"],
        episode: List<String>.from(json["episode"].map((x) => x)),
        url: json["url"],
        created: DateTime.parse(json["created"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "status": status,
        "species": species,
        "type": type,
        "gender": gender,
        // "origin": origin.toJson(),
        // "location": location.toJson(),
        "image": image,
        "episode": List<dynamic>.from(episode.map((x) => x)),
        "url": url,
        "created": created.toIso8601String(),
      };
}
