import 'package:bluestackapp/feature/home_screen/widgets/stats_item.dart';
import 'package:bluestackapp/foundation/theme/colors.dart';
import 'package:bluestackapp/foundation/theme/spacing.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 50,
              ),
              SizedBox(
                width: Spacing.x2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Simon Baker",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: Spacing.x1p75,
                  ),
                  Container(
                    width: 160,
                    height: 46,
                    padding: const EdgeInsets.only(left: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 1,
                        color: AppColor.blueColor,
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "2250",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        SizedBox(
                          width: Spacing.x1,
                        ),
                        const Text(
                          "Elo rating",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: Spacing.x3,
          ),
          Row(
            children: [
              StatsItem(
                topLeft: 25,
                bottomLeft: 25,
                bgColor1: AppColor.yellowColor,
                bgColor2: AppColor.darkYellowColor,
                titleText: "34",
                subTitleText: "Tournaments",
                trailingText: "played",
              ),
              StatsItem(
                bgColor1: AppColor.lightVioletColor,
                bgColor2: AppColor.darkVioletColor,
                titleText: "09",
                subTitleText: "Tournaments",
                trailingText: "won",
              ),
              StatsItem(
                topRight: 25,
                bottomRight: 25,
                bgColor1: AppColor.lightRedColor,
                bgColor2: AppColor.darkRedColor,
                titleText: "26%",
                subTitleText: "Winning",
                trailingText: "percentage",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
