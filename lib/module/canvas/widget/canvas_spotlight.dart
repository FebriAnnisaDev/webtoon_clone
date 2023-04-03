import 'package:clone_webtoon/module/for_you_other_categories/view/for_you_other_categories.dart';
import 'package:clone_webtoon/shared/data/random_image.dart';
import 'package:clone_webtoon/shared/util/const.dart';
import 'package:clone_webtoon/shared/widget/top_series/view/top_series.dart';
import 'package:flutter/material.dart';

import '../../../data/canvas_data.dart';
import '../../../shared/data/genres_data.dart';

// ignore: must_be_immutable
class CanvasSpotlight extends StatelessWidget {
  CanvasSpotlight({
    super.key,
  });

  List genreData = SharedData.genresData;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Container(
            padding: const EdgeInsets.all(defaultPadding),
            height: 230,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Recommended Series",
                  style: TextStyle(
                    fontSize: categoryTitleFont,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 100,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.network(
                                    getRandomImage(),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: Image.network(
              "https://i.ibb.co/q5wMg9K/Gambar-Whats-App-2023-03-08-pukul-05-12-03.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TopSeries(
            genre: 'Weekly HOT Series',
            dataList: CanvasData.topSeriesCanvas,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: Image.network(
              "https://i.ibb.co/pRtHwVZ/Gambar-Whats-App-2023-03-08-pukul-05-12-14.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const ForYouOtherCategories(categoryName: "Genre"),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            height: 280,
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              childAspectRatio: 0.65,
              children: List.generate(genreData.length, (index) {
                return Container(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey[900],
                        child: Image.network(
                          genreData[index]['image'],
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        genreData[index]['genre'],
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
