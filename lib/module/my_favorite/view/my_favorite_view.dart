import 'package:flutter/material.dart';
import 'package:clone_webtoon/core.dart';
import '../../my_favorite_comments/view/my_favorite_comments.dart';
import '../../my_favorite_creators/view/my_favorite_creators.dart';
import '../../my_favorite_downloads/view/my_favorite_downloads.dart';
import '../../my_favorite_subscribed/view/my_favorite_subscribed.dart';
import '../../my_favorite_unlocked/view/my_favorite_unlocked.dart';
import '../controller/my_favorite_controller.dart';
import '../../my_favorite_recent/view/my_favorite_recent_webtoons.dart';

class MyFavoriteView extends StatefulWidget {
  const MyFavoriteView({Key? key}) : super(key: key);

  Widget build(context, MyFavoriteController controller) {
    controller.view = this;
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: const Text(
            "My Favorite",
            style: TextStyle(
              fontSize: 18.0,
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
                labelPadding: EdgeInsets.symmetric(horizontal: 12.0),
                labelStyle: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
                isScrollable: true,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(
                    text: "RECENT",
                  ),
                  Tab(
                    text: "SUBSCRIBED",
                  ),
                  Tab(
                    text: "DOWNLOADS",
                  ),
                  Tab(
                    text: "UNLOCKED",
                  ),
                  Tab(
                    text: "CREATORS",
                  ),
                  Tab(
                    text: "COMMENTS",
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            MyFavoriteRecentWebtoons(),
            MyFavoriteSubscribed(),
            MyFavoriteDownloads(),
            MyFavoriteUnlocked(),
            MyFavoriteCreators(),
            const MyFavoriteComments(),
          ],
        ),
      ),
    );
  }

  @override
  State<MyFavoriteView> createState() => MyFavoriteController();
}
