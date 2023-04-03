import 'package:clone_webtoon/data/original_data.dart';
import 'package:clone_webtoon/module/for_you_other_categories/view/for_you_other_categories.dart';

import 'package:flutter/material.dart';

import '../../../shared/util/const.dart';
import 'original_daily_update_webtoons_list.dart';

// ignore: must_be_immutable
class OriginalDailyWebtoons extends StatelessWidget {
  final List<dynamic> dataList;
  const OriginalDailyWebtoons({
    required this.dataList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              children: [
                Text(
                  "${data.length} items",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      "Interest",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey.shade700,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(defaultPadding),
            height: 560,
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              childAspectRatio: 0.62,
              crossAxisCount: 3,
              mainAxisSpacing: 3,
              children: List.generate(
                dataList.length,
                (index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
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
                        height: 5.0,
                      ),
                      Text(
                        dataList[index]['genre'],
                        style: TextStyle(
                          fontSize: 10.0,
                          color: subtitleColor,
                        ),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        dataList[index]['title'],
                        style: const TextStyle(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.favorite,
                            size: 12,
                            color: secondaryColor,
                          ),
                          SizedBox(
                            width: 2.0,
                          ),
                          Text(
                            "2 M",
                            style:
                                TextStyle(fontSize: 14, color: secondaryColor),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const ForYouOtherCategories(
              categoryName: "New episodes available daily"),
          const OriginalDailyUpdateWebtoonsList(),
          const SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }
}
