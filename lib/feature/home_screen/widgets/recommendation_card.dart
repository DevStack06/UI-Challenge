import 'package:bluestackapp/feature/home_screen/model/tournament_model.dart';
import 'package:bluestackapp/foundation/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({Key? key, required this.tournamentModel})
      : super(key: key);
  final TournamentModel tournamentModel;
  final double parentContainerHeight = 160;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: parentContainerHeight,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            Container(
              height: parentContainerHeight * 0.50,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                image: DecorationImage(
                  image: NetworkImage(tournamentModel.coverUrl),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            ListTile(
              title: Text(
                tournamentModel.name ?? "",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: AppColor.darkColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                tournamentModel.gameName ?? "",
                style: TextStyle(
                  color: AppColor.greyColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 13.5,
                ),
              ),
              trailing: const Icon(
                CupertinoIcons.forward,
              ),
            )
          ],
        ),
      ),
    );
  }
}
