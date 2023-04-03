import 'package:clone_webtoon/shared/util/const.dart';
import 'package:flutter/material.dart';
import '../widget/original_daily_webtoons.dart';
import '../../../data/original_data.dart';

// ignore: must_be_immutable
class OriginalDailyView extends StatelessWidget {
  OriginalDailyView({super.key});

  List mondayList = OriginalDailyData.originalDailyMonday;
  List tuesdayList = OriginalDailyData.originalDailyTuesday;
  List wednesdayList = OriginalDailyData.originalDailyWednesday;
  List thursdayList = OriginalDailyData.originalDailyThursday;
  List fridayList = OriginalDailyData.originalDailyFriday;
  List saturdayList = OriginalDailyData.originalDailySaturday;
  List sundayList = OriginalDailyData.originalDailySunday;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey.shade900,
                    width: 1.0,
                  ),
                  bottom: BorderSide(
                    color: Colors.grey.shade900,
                    width: 1.0,
                  ),
                ),
              ),
              child: const TabBar(
                indicator: UnderlineTabIndicator(
                  insets: EdgeInsets.only(),
                ),
                labelPadding: EdgeInsets.symmetric(horizontal: 15.0),
                labelStyle: TextStyle(
                  fontSize: appBarBottomLabelFont,
                  fontWeight: FontWeight.bold,
                ),
                isScrollable: true,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(
                    text: "MON",
                  ),
                  Tab(
                    text: "TUE",
                  ),
                  Tab(
                    text: "WED",
                  ),
                  Tab(
                    text: "THU",
                  ),
                  Tab(
                    text: "FRI",
                  ),
                  Tab(
                    text: "SAT",
                  ),
                  Tab(
                    text: "SUN",
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              OriginalDailyWebtoons(dataList: mondayList),
              OriginalDailyWebtoons(dataList: tuesdayList),
              OriginalDailyWebtoons(dataList: wednesdayList),
              OriginalDailyWebtoons(dataList: thursdayList),
              OriginalDailyWebtoons(dataList: fridayList),
              OriginalDailyWebtoons(dataList: saturdayList),
              OriginalDailyWebtoons(dataList: sundayList),
            ],
          ),
        ),
      ),
    );
  }
}
