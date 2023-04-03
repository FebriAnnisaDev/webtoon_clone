import 'package:clone_webtoon/module/webtoons_on_click/view/webtoons_on_click.dart';
import "package:flutter/material.dart";
import 'package:clone_webtoon/data/for_you_data.dart';
import 'package:get/get.dart';
import '../../../shared/util/const.dart';

// ignore: must_be_immutable
class ForYouMySeries extends StatelessWidget {
  ForYouMySeries({
    Key? key,
  }) : super(key: key);

  List mySeriesList = ForYouData.mySeries;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(categoryPadding),
          child: Row(
            children: const [
              Text(
                "My Series",
                style: TextStyle(
                  fontSize: categoryTitleFont,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(Icons.navigate_next),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mySeriesList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(() => WebtoonsOnClick(
                            id: mySeriesList[index]['id'],
                          ));
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 190,
                          width: 140,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 0.3,
                              color: Colors.grey.shade800,
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                child: Image.network(
                                  mySeriesList[index]['image'],
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                height: 85,
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      mySeriesList[index]['title'],
                                      style: const TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "ORIGINALS",
                                      style: TextStyle(
                                        fontSize: 11.0,
                                        color: subtitleColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Expanded(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                            width: 0.3,
                                            color: Colors.grey.shade800,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.check,
                                              size: 8.0,
                                              color: Colors.grey,
                                            ),
                                            const SizedBox(
                                              width: 3.0,
                                            ),
                                            Text(
                                              "Subscribed",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10.0,
                                                color: subtitleColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        if (index == 2)
                          Container(
                            height: 190,
                            width: 140,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 0.3,
                                color: Colors.grey.shade800,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "To My Series",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Icon(
                                  Icons.play_circle_outline_rounded,
                                  size: 40,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
