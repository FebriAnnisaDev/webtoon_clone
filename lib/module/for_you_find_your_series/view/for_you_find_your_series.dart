import 'package:flutter/material.dart';

import '../../../shared/util/const.dart';

class ForYouFindYourSeries extends StatelessWidget {
  const ForYouFindYourSeries({
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
                "Find your series",
                style: TextStyle(
                  fontSize: categoryTitleFont,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://cdna.artstation.com/p/assets/images/images/050/959/098/large/stan-chou-webtoon-grid-2.jpg?1656093315",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Image.network(
                  "https://static.wixstatic.com/media/6e4eb8_6c3681e0e06f47599e28d4b563dfb771~mv2.png/v1/fill/w_1275,h_1800,al_c,q_95,enc_auto/Partition%20Fade%20copy.png",
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  fit: BoxFit.fill,
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "WEBTOON",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "recommends for you",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 75,
                        height: 35,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Center(
                          child: Text(
                            "View",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
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
            height: 15.0,
          ),
        ],
      ),
    );
  }
}
