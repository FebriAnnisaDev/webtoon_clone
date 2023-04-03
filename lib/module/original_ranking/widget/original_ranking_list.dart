import 'package:flutter/material.dart';
import '../../../../../shared/util/const.dart';
import 'original_ranking_top_genre.dart';

// ignore: must_be_immutable
class RankingList extends StatelessWidget {
  List dataList;
  RankingList({required this.dataList, super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RankingTopGenre(),
          Container(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${index + 2}',
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        if (index == 8)
                          const SizedBox(
                            width: 10.0,
                          ),
                        if (index != 8)
                          const SizedBox(
                            width: 20.0,
                          ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              dataList[index]['image'],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              dataList[index]['title'],
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  dataList[index]['genre'],
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: subtitleColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Icon(
                                  Icons.favorite,
                                  size: 10,
                                  color: secondaryColor,
                                ),
                                const SizedBox(
                                  width: 2.0,
                                ),
                                const Text(
                                  "10M",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: secondaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
