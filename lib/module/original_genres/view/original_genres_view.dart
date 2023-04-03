import 'package:clone_webtoon/module/original_genres/widget/original_genres_webtoons_list.dart';
import 'package:clone_webtoon/shared/util/const.dart';
import 'package:flutter/material.dart';

import '../../../data/original_data.dart';

// ignore: must_be_immutable
class OriginalGenresView extends StatelessWidget {
  OriginalGenresView({super.key});

  List originalGenreComedyList = OriginalGenresData.originalGenresComedy;
  List originalGenreFantasyList = OriginalGenresData.originalGenresFantasy;
  List originalGenreDramaList = OriginalGenresData.originalGenresDrama;
  List originalGenreSliceOfLifeList =
      OriginalGenresData.originalGenresSliceOfLife;
  List originalGenreRomanceList = OriginalGenresData.originalGenresRomance;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
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
          body: TabBarView(children: [
            OriginalGenresWebtoons(
              dataList: originalGenreDramaList,
            ),
            OriginalGenresWebtoons(
              dataList: originalGenreFantasyList,
            ),
            OriginalGenresWebtoons(
              dataList: originalGenreComedyList,
            ),
            OriginalGenresWebtoons(
              dataList: originalGenreSliceOfLifeList,
            ),
            OriginalGenresWebtoons(
              dataList: originalGenreRomanceList,
            ),
          ]),
        ),
      ),
    );
  }
}
