import 'dart:convert';

import 'package:bluestackapp/feature/home_screen/model/tournament_model.dart';

RecommendationModel recommendationModelFromJson(String str) =>
    RecommendationModel.fromJson(json.decode(str)['data']);

String recommendationModelToJson(RecommendationModel data) =>
    json.encode(data.toJson());

class RecommendationModel {
  RecommendationModel({
    required this.cursor,
    required this.tournaments,
  });

  String cursor;
  List<TournamentModel> tournaments;
  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(
        cursor: json["cursor"],
        tournaments: List<TournamentModel>.from(
            json["tournaments"].map((x) => TournamentModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "cursor": cursor,
        "tournaments": List<dynamic>.from(tournaments.map((x) => x.toJson())),
      };
}
