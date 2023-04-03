import 'package:clone_webtoon/module/for_you_search/for_you_search_view.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/for_you_new_here_controller.dart';
import '../widget/for_you_new_here_hits_webtoon.dart';

// ignore: must_be_immutable
class ForYouNewHereView extends StatefulWidget {
  const ForYouNewHereView({
    super.key,
  });

  @override
  State<ForYouNewHereView> createState() => _ForYouNewHereViewState();
}

class _ForYouNewHereViewState extends State<ForYouNewHereView> {
  ForYouNewHereController controller = ForYouNewHereController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 410,
      color: const Color.fromRGBO(48, 48, 48, 100),
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            SizedBox(
              height: 50,
              child: Image.network(
                  "https://i.ibb.co/0YXfcMm/f61ba0594f83bbebb83b4973aa677ff8-removebg-preview.png"),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Get.to(() => const ForYouSearchView());
              },
              child: SizedBox(
                width: 50,
                height: 35,
                child: Image.network(
                  "https://i.ibb.co/b7q5qwW/search-explore-white-icon-transparent-png-31634946340qymsafkpk6-removebg-preview.png",
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            "New Here?",
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            children: const [
              Text(
                "Start with hits read by Millions",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Icon(Icons.navigate_next),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          const ForYouNewHereHitsWebtoon(),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
