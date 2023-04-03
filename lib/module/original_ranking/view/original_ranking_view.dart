import 'package:clone_webtoon/data/original_data.dart';
import 'package:clone_webtoon/shared/util/const.dart';
import 'package:flutter/material.dart';

import '../widget/original_ranking_list.dart';

// ignore: must_be_immutable
class OriginalRankingView extends StatelessWidget {
  OriginalRankingView({super.key});

  List popularRankingList = OriginalGenresData.originalGenresPopular;
  List dramaRankingList = OriginalGenresData.originalGenresDrama;
  List fantasyRankingList = OriginalGenresData.originalGenresFantasy;
  List comedyRankingList = OriginalGenresData.originalGenresComedy;
  List sliceOfLifeRankingList = OriginalGenresData.originalGenresSliceOfLife;
  List romanceRankingList = OriginalGenresData.originalGenresRomance;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: const Text(
            "Ranking",
            style: TextStyle(
              fontSize: appBarLabelFont,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: Container(
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
                    text: "POPULAR",
                  ),
                  Tab(
                    text: "DRAMA",
                  ),
                  Tab(
                    text: "FANTASY",
                  ),
                  Tab(
                    text: "COMEDY",
                  ),
                  Tab(
                    text: "SLICE OF LIFE",
                  ),
                  Tab(
                    text: "ROMANCE",
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            RankingList(dataList: popularRankingList),
            RankingList(dataList: dramaRankingList),
            RankingList(
              dataList: fantasyRankingList,
            ),
            RankingList(
              dataList: comedyRankingList,
            ),
            RankingList(
              dataList: sliceOfLifeRankingList,
            ),
            RankingList(
              dataList: romanceRankingList,
            ),
          ],
        ),
      ),
    );
  }
}
