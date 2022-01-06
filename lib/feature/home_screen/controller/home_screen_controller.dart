import 'package:bluestackapp/feature/home_screen/model/recommendation_model.dart';
import 'package:bluestackapp/services/remote_service/remote_service.dart';
import 'package:get/state_manager.dart';
import 'package:bluestackapp/feature/home_screen/model/tournament_model.dart';
import 'package:flutter/material.dart';

class HomeScreenController extends GetxController {
  RxList tournaments = [].obs;
  RxBool loading = false.obs;
  ScrollController controller = ScrollController();
  RxString cursor = "".obs;
  RemoteService remoteService = RemoteService();

  @override
  void onInit() {
    super.onInit();
    getTournaments();
    handleNext();
  }

  void getTournaments() async {
    try {
      loading(true);
      RecommendationModel? recommendationModel =
          await remoteService.getTournaments(cursor.value);
      if (recommendationModel != null) {
        List<TournamentModel> tournamentList = recommendationModel.tournaments;
        tournaments.addAll(tournamentList);
        cursor.value = recommendationModel.cursor;
      }
      loading(false);
    } catch (e) {
      loading(false);
      print("error ${e.toString()}"); // handling error here
    }
  }

  void handleNext() async {
    controller.addListener(() async {
      if (controller.position.maxScrollExtent == controller.position.pixels) {
        getTournaments();
      }
    });
  }
}
