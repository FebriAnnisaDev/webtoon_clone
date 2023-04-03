import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shared/data/genres_data.dart';
import '../../../shared/util/const.dart';
import '../../original/view/original_view.dart';

// ignore: must_be_immutable
class ForYouFavoriteGenres extends StatelessWidget {
  ForYouFavoriteGenres({
    super.key,
  });

  List genreData = SharedData.genresData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(categoryPadding),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    "Favorite Genres",
                    style: TextStyle(
                      fontSize: categoryTitleFont,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.navigate_next),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: genreData.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => const OriginalView());
                  },
                  child: Container(
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
                      )),
                );
              }),
        ),
      ],
    );
  }
}
