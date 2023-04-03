import 'package:clone_webtoon/module/original_genres/view/original_genres_view.dart';
import 'package:clone_webtoon/shared/util/const.dart';
import 'package:flutter/material.dart';
import 'package:clone_webtoon/core.dart';

import '../widget/canvas_spotlight.dart';

class CanvasView extends StatefulWidget {
  const CanvasView({Key? key}) : super(key: key);

  Widget build(context, CanvasController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 2,
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
                          const Text("Spotlight"),
                          SizedBox(
                            height: 15.0,
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
                            width: 100.0,
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
            children: [
              CanvasSpotlight(),
              Center(
                child: OriginalGenresView(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CanvasView> createState() => CanvasController();
}
