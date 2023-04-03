import 'package:clone_webtoon/module/webtoons_on_click/view/webtoons_on_click.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

import '../../../data/for_you_data.dart';

// ignore: must_be_immutable
class ForYouNewHereHitsWebtoon extends StatefulWidget {
  const ForYouNewHereHitsWebtoon({
    Key? key,
  }) : super(key: key);

  @override
  State<ForYouNewHereHitsWebtoon> createState() =>
      _ForYouNewHereHitsWebtoonState();
}

class _ForYouNewHereHitsWebtoonState extends State<ForYouNewHereHitsWebtoon> {
  List newUserRecommendationList = ForYouData.newUserRecommendation;
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final description =
        newUserRecommendationList[_currentPageIndex]['description'];
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: newUserRecommendationList.length,
            options: CarouselOptions(
              onPageChanged: (int index, CarouselPageChangedReason reason) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              enableInfiniteScroll: false,
              height: 215.0,
              enlargeFactor: 0.2,
              autoPlay: false,
              padEnds: false,
              enlargeCenterPage: true,
            ),
            itemBuilder: (context, index, realIndex) {
              return InkWell(
                onTap: () {
                  Get.to(
                    () => WebtoonsOnClick(
                      id: newUserRecommendationList[index]['id'],
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            newUserRecommendationList[index]['image'],
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            height: 160,
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              newUserRecommendationList[index]['title'],
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              children: const [
                                Icon(
                                  Icons.check_circle,
                                  size: 14,
                                  color: Color.fromARGB(255, 0, 220, 100),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 2.0,
                            ),
                            const Text(
                              "6.2M",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 220, 100)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
        if (_currentPageIndex == 0 ||
            _currentPageIndex == 1 ||
            _currentPageIndex == 2 ||
            _currentPageIndex == 3 ||
            _currentPageIndex == 5)
          Text(
            description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
            ),
          ),
      ],
    );
  }
}
