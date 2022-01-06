import 'package:bluestackapp/services/remote_service/remote_service.dart';
import 'package:get/state_manager.dart';
import 'package:bluestackapp/feature/home_screen/model/tournament_model.dart';
import 'package:flutter/material.dart';

class HomeScreenController extends GetxController {
  RxList tournaments = [].obs;
  RxBool loading = false.obs;
  ScrollController controller = ScrollController();
  int listLength = 10;
  RemoteService remoteService = RemoteService();
  @override
  void onInit() {
    super.onInit();
    getTournaments();
  }

  void getTournaments() async {
    try {
      loading(true);
      List<TournamentModel> tournamentList =
          await remoteService.getTournaments();
      tournaments.value = tournamentList;
      loading(false);
    } catch (e) {
      loading(false);
      print("error ${e.toString()}");
    }
  }
}
