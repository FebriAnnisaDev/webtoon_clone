import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/util/const.dart';
import '../../webtoons_on_click/view/webtoons_on_click.dart';

class ForYouGenresRecommendation extends StatelessWidget {
  final String genre;
  final List dataList;

  const ForYouGenresRecommendation({
    required this.genre,
    required this.dataList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                genre,
                style: const TextStyle(
                  fontSize: categoryTitleFont,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(() => WebtoonsOnClick(id: dataList[index]['id']));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                dataList[index]['image'],
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            genre,
                            style: TextStyle(
                              fontSize: 10.0,
                              color: subtitleColor,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            dataList[index]['title'],
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
