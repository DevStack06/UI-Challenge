import 'package:bluestackapp/feature/home_screen/model/recommendation_model.dart';
import 'package:bluestackapp/feature/home_screen/model/tournament_model.dart';
import 'package:bluestackapp/services/network_handler/network_handler.dart';

class RemoteService {
  Future<List<TournamentModel>> getTournaments() async {
    String? jsonString =
        await NetworkHandler.get("tournaments_list_v2?limit=10&status=all");
    if (jsonString != null) {
      RecommendationModel recommendationModel =
          recommendationModelFromJson(jsonString);

      return recommendationModel.tournaments;
    }
    return [];
  }
}
