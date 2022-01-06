import 'dart:convert';

TournamentModel tournamentModelFromJson(String str) =>
    TournamentModel.fromJson(json.decode(str));

String tournamentModelToJson(TournamentModel data) =>
    json.encode(data.toJson());

class TournamentModel {
  TournamentModel({
    this.tournamentId,
    this.name,
    required this.coverUrl,
    this.gameName,
  });

  String? tournamentId;
  String? name;
  String coverUrl;
  String? gameName;

  factory TournamentModel.fromJson(Map<String, dynamic> json) =>
      TournamentModel(
        tournamentId: json["tournament_id"],
        name: json["name"],
        coverUrl: json["cover_url"],
        gameName: json["game_name"],
      );

  Map<String, dynamic> toJson() => {
        "tournament_id": tournamentId,
        "name": name,
        "cover_url": coverUrl,
        "game_name": gameName,
      };
}
