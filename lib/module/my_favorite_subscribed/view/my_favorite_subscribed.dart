import 'package:clone_webtoon/shared/util/const.dart';
import 'package:flutter/material.dart';

import '../../../data/MY_favorite_data.dart';

// ignore: must_be_immutable
class MyFavoriteSubscribed extends StatelessWidget {
  MyFavoriteSubscribed({
    super.key,
  });
  final bool hasSubscribeData = true;
  List favoriteList = MyFavoriteData.subscribedData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: hasSubscribeData
          ? ListView.builder(
              itemCount: favoriteList.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey.shade900,
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.network(
                          favoriteList[index]['image'],
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            favoriteList[index]['title'],
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            favoriteList[index]['author'],
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Center(
                        child: Icon(
                          Icons.notifications,
                          color: secondaryColor,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                    ],
                  ),
                );
              },
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign in to view favorite webtoons.",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "SIGN IN",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
