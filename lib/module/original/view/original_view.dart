import 'package:clone_webtoon/shared/widget/search_view.dart';
import 'package:clone_webtoon/module/original_daily/view/original_daily_view.dart';
import 'package:clone_webtoon/module/original_genres/view/original_genres_view.dart';
import 'package:clone_webtoon/module/original_ranking/view/original_ranking_view.dart';
import 'package:clone_webtoon/shared/util/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/original_view_controller.dart';

class OriginalView extends StatefulWidget {
  const OriginalView({Key? key}) : super(key: key);

  Widget build(context, OriginalViewController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            leadingWidth: MediaQuery.of(context).size.width,
            leading: PreferredSize(
              preferredSize: const Size.fromHeight(80.0),
              child: SizedBox(
                height: 100,
                child: TabBar(
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      return states.contains(MaterialState.focused)
                          ? null
                          : Colors.transparent;
                    },
                  ),
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  labelPadding: const EdgeInsets.only(right: 5),
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  labelStyle: const TextStyle(
                    fontSize: appBarLabelFont,
                    fontWeight: FontWeight.bold,
                  ),
                  tabs: [
                    Tab(
                      child: Row(
                        children: [
                          const Text("Daily"),
                          SizedBox(
                            height: 12.0,
                            child: VerticalDivider(
                              color: Colors.grey.shade700,
                              thickness: 1,
                              width: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        children: const [
                          Text("Genres"),
                          SizedBox(
                            width: 80.0,
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        children: [
                          InkWell(
                            enableFeedback: false,
                            onTap: () {
                              Get.to(() => OriginalRankingView());
                            },
                            child: const Icon(
                              Icons.military_tech,
                              size: 35,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Icon(
                            Icons.search,
                            size: 35.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Center(
                child: OriginalDailyView(),
              ),
              Center(
                child: OriginalGenresView(),
              ),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: SearchView(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<OriginalView> createState() => OriginalViewController();
}
