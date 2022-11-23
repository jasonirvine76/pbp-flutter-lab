// To parse this JSON data, do
//
//     final mywatchlist = mywatchlistFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Mywatchlist> mywatchlistFromJson(String str) => List<Mywatchlist>.from(
    json.decode(str).map((x) => Mywatchlist.fromJson(x)));

String mywatchlistToJson(List<Mywatchlist> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Mywatchlist {
  Mywatchlist({
    required this.pk,
    required this.fields,
  });

  int pk;
  Fields fields;

  factory Mywatchlist.fromJson(Map<String, dynamic> json) => Mywatchlist(
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  Fields({
    required this.watched,
    required this.title,
    required this.rating,
    required this.releaseDate,
    required this.review,
    required this.boolWatched,
  });

  String watched;
  String title;
  String rating;
  DateTime releaseDate;
  String review;
  bool boolWatched;

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        watched: json["watched"] == true ? "watched" : "not watched",
        boolWatched: json["watched"],
        title: json["title"],
        rating: json["rating"] == null ? "-" : json["rating"],
        releaseDate: DateTime.parse(json["release_date"]),
        review: json["review"],
      );

  Map<String, dynamic> toJson() => {
        "watched": watched,
        "title": title,
        "rating": rating == null ? null : rating,
        "boolWatched": boolWatched,
        "release_date":
            "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        "review": review,
      };
}

enum Model { MYWATCHLIST_MYWATCHLIST }

final modelValues =
    EnumValues({"mywatchlist.mywatchlist": Model.MYWATCHLIST_MYWATCHLIST});

class EnumValues<T> {
  late Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
