import 'package:flutter/material.dart';
import '../../../../../data/original_data.dart';
import '../../../../../shared/util/const.dart';

// ignore: must_be_immutable
class RankingTopGenre extends StatelessWidget {
  RankingTopGenre({
    super.key,
  });

  List numberOneRank = OriginalRanking.topOneRankWebtoon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            border: Border(
              bottom: BorderSide(
                width: 0.5,
                color: Colors.grey[800]!,
              ),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 18.0),
                  child: Container(
                    width: 100,
                    height: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        numberOneRank[0]['image'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 30,
                  child: Stack(
                    children: [
                      Image.network(
                          "https://i.ibb.co/Fn98H6n/Gambar-Whats-App-2023-03-16-pukul-00-05-39-removebg-preview.png",
                          width: 30,
                          color: secondaryColor),
                      const Positioned(
                        left: 11,
                        top: 6,
                        child: Text("1"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25.0,
                ),
                Text(
                  numberOneRank[0]['title'],
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Text(
                      numberOneRank[0]['genre'],
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
                      size: 12,
                      color: secondaryColor,
                    ),
                    const SizedBox(
                      width: 2.0,
                    ),
                    const Text(
                      "64M",
                      style: TextStyle(
                        fontSize: 14,
                        color: secondaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 180,
                  height: 90,
                  child: Expanded(
                    child: Text(
                      numberOneRank[0]['description'],
                      maxLines: 3,
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: subtitleColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
