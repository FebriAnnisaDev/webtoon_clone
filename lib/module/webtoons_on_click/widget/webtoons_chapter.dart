import 'package:clone_webtoon/module/more/widget/more_buy_coins_view.dart';
import 'package:clone_webtoon/module/webtoons/view/webtoons_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/util/const.dart';
import '../../more/controller/more_controller.dart';

// ignore: must_be_immutable
class WebtoonsChapter extends StatelessWidget {
  final String image;
  const WebtoonsChapter({
    required this.image,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    MoreController controller = Get.put(MoreController());
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, index) {
          bool hasUnlocked = false;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: hasUnlocked == true
                    ? () {
                        Get.to(() => const WebtoonsView());
                      }
                    : () async {
                        String? text;
                        if (controller.userCoins < 5) {
                          text = "Go to Coins Shop!";
                        } else {
                          text = "Use 5 Coins";
                        }
                        await showDialog<void>(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(
                                      width: 200,
                                      child: Center(
                                        child: Text(
                                          'Use Coins to unlock this episode!',
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
                                ],
                              ),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text(
                                        'To unlock this chapter, you need 5 Coins.'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey[600],
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Cancel"),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey[600],
                                  ),
                                  onPressed: () {
                                    controller.userCoins >= 5
                                        ? Get.to(() => const WebtoonsView())!
                                            .then((value) =>
                                                controller.userCoins -= 5)
                                            .then((value) => Get.back())
                                            .then((value) => hasUnlocked = true)
                                            .then(
                                                (value) => controller.update())
                                        : Get.to(() => const MoreBuyCoins())!
                                            .then((value) => Get.back());
                                    controller.update();
                                  },
                                  child: Text(
                                    "$text",
                                    style:
                                        const TextStyle(color: secondaryColor),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      image,
                      width: 80.0,
                      height: 80.0,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Chapter's Title",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.favorite_outline,
                                color: Colors.grey,
                                size: 15,
                              ),
                              Text(
                                "1,530",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "February 21, 2023",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "#${index + 1}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 0,
                thickness: 0.3,
                color: Colors.grey,
              ),
            ],
          );
        },
      ),
    );
  }
}
