import 'package:clone_webtoon/module/webtoons_on_click/widget/webtoons_description.dart';
import 'package:clone_webtoon/shared/util/const.dart';
import 'package:flutter/material.dart';

import '../../../data/all_webtoons_data.dart';
import '../widget/webtoons_chapter.dart';

class WebtoonsOnClick extends StatelessWidget {
  final int id;
  const WebtoonsOnClick({required this.id, super.key});
  @override
  Widget build(BuildContext context) {
    List webtoonsDataList = AllWebtoonsData.allWebtoonsDataList;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 18, bottom: 18),
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Row(
                  children: const [
                    Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 12,
                    ),
                    Text(
                      "Subscribe",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          const Icon(
            Icons.info,
            size: 25,
          ),
          const SizedBox(
            width: 10.0,
          ),
          const Icon(
            Icons.share,
            size: 25,
          ),
          const SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            WebtoonsDescription(
              title: webtoonsDataList[id]['title'],
              genre: webtoonsDataList[id]['genre'],
              author: webtoonsDataList[id]['author'],
              description: webtoonsDataList[id]['description'],
              image: webtoonsDataList[id]['image'],
            ),
            WebtoonsChapter(
              image: webtoonsDataList[id]['image'],
            ),
          ],
        ),
      ),
    );
  }
}
