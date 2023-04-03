import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../shared/data/random_image.dart';
import '../../../shared/util/const.dart';

class CanvasWeeklyHotList extends StatelessWidget {
  const CanvasWeeklyHotList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(categoryPadding),
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                "Weekly HOT",
                style: TextStyle(
                  fontSize: categoryTitleFont,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(Icons.navigate_next),
            ],
          ),
          CarouselSlider.builder(
            itemCount: 6,
            options: CarouselOptions(
              enableInfiniteScroll: false,
              height: 280.0,
              viewportFraction: 0.83,
              autoPlay: false,
              padEnds: false,
              enlargeCenterPage: false,
            ),
            itemBuilder: (context, index, realIndex) {
              return Container(
                padding:
                    const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 10.0),
                width: MediaQuery.of(context).size.width,
                height: 310,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
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
                                getRandomImage(),
                                width: 40.0,
                                height: 40.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Lorem Ipsum",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Genre",
                                  style: TextStyle(
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
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
