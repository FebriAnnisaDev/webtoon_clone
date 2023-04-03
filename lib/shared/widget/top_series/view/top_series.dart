import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:clone_webtoon/data/for_you_data.dart';
import 'package:get/get.dart';
import '../../../../module/webtoons_on_click/view/webtoons_on_click.dart';
import '../../../util/const.dart';

// ignore: must_be_immutable
class TopSeries extends StatefulWidget {
  List dataList;
  final String genre;

  TopSeries({
    required this.genre,
    required this.dataList,
    super.key,
  });

  @override
  State<TopSeries> createState() => _TopSeriesState();
}

class _TopSeriesState extends State<TopSeries> {
  List topSeriesList = ForYouData.topSeriesForYou;

  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final topSeriesGenre = topSeriesList[_currentPageIndex]['genre'];
    return Container(
      padding: const EdgeInsets.all(categoryPadding),
      child: Column(
        children: [
          Row(
            children: [
              if (widget.dataList == topSeriesList)
                Text(
                  "Top $topSeriesGenre",
                  style: const TextStyle(
                    fontSize: categoryTitleFont,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              if (widget.dataList != topSeriesList)
                Text(
                  widget.genre,
                  style: const TextStyle(
                    fontSize: categoryTitleFont,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              const Spacer(),
              if (widget.dataList == topSeriesList)
                const Icon(Icons.navigate_next),
            ],
          ),
          CarouselSlider.builder(
            itemCount: widget.dataList.length,
            options: CarouselOptions(
              onPageChanged: (int index, CarouselPageChangedReason reason) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              enableInfiniteScroll: false,
              height: 290.0,
              viewportFraction: 0.83,
              autoPlay: false,
              padEnds: false,
              enlargeCenterPage: false,
            ),
            itemBuilder: (context, index, realIndex) {
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 15.0, bottom: 15.0, left: 10.0),
                    width: MediaQuery.of(context).size.width,
                    height: 290,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: topSeriesList.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.to(() => WebtoonsOnClick(
                                id: widget.dataList[index]['id']));
                          },
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  if (index == 0)
                                    Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Positioned(
                                          left: -11,
                                          bottom: -7,
                                          child: Image.network(
                                              "https://i.ibb.co/Fn98H6n/Gambar-Whats-App-2023-03-16-pukul-00-05-39-removebg-preview.png",
                                              width: 30,
                                              color: secondaryColor),
                                        ),
                                        const Text(
                                          "1",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        )
                                      ],
                                    ),
                                  if (index > 0)
                                    Text(
                                      "${index + 1}",
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  const SizedBox(
                                    width: 15.0,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.network(
                                      widget.dataList[index]['image'],
                                      width: 40.0,
                                      height: 40.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.dataList[index]['title'],
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        topSeriesList[index]['genre'],
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
