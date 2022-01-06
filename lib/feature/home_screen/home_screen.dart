import 'package:bluestackapp/feature/home_screen/widgets/recommendation_card.dart';
import 'package:bluestackapp/feature/home_screen/widgets/user_details.dart';
import 'package:bluestackapp/feature/login/login.dart';
import 'package:bluestackapp/foundation/theme/colors.dart';
import 'package:bluestackapp/services/network_handler/network_handler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/home_screen_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBGColor,
      body: SafeArea(
        child: Obx(() {
          return CustomScrollView(
            controller: controller.controller,
            slivers: [
              SliverAppBar(
                backgroundColor: AppColor.scaffoldBGColor,
                floating: true,
                leading: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                expandedHeight: 50.0,
                title: Text(
                  'Flyingwolf',
                  style: Theme.of(context).textTheme.headline5,
                ),
                actions: [
                  IconButton(
                    onPressed: onLogout,
                    icon: const Icon(
                      Icons.logout,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              const SliverToBoxAdapter(
                child: UserDetails(),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                  child: Text(
                    "Recommended for you",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.4,
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return RecommendationCard(
                      tournamentModel: controller.tournaments[index],
                    );
                  },
                  childCount: controller.tournaments.length,
                ),
              ),
              SliverToBoxAdapter(
                child: controller.loading.value
                    ? const Padding(
                        padding: EdgeInsets.only(top: 30, bottom: 60),
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : Container(),
              )
            ],
          );
        }),
      ),
    );
  }

  void onLogout() {
    NetworkHandler.removeToken();
    Get.offAll(Login());
  }
}
