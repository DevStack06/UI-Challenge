import 'package:bluestackapp/feature/home_screen/model/recommendation_model.dart';
import 'package:bluestackapp/services/network_handler/network_handler.dart';

class RemoteService {
  Future<RecommendationModel?> getTournaments(String cursor) async {
    String endpoint = "tournaments_list_v2?limit=10&status=all";
    if (cursor.isNotEmpty) {
      endpoint += "&cursor=$cursor";
    }
    String? jsonString = await NetworkHandler.get(endpoint);
    if (jsonString != null) {
      RecommendationModel recommendationModel =
          recommendationModelFromJson(jsonString);

      return recommendationModel;
    }
    return null;
  }
}
