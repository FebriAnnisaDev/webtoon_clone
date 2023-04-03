import 'package:clone_webtoon/shared/util/const.dart';
import 'package:flutter/material.dart';

import '../../../data/MY_favorite_data.dart';

// ignore: must_be_immutable
class MyFavoriteRecentWebtoons extends StatelessWidget {
  MyFavoriteRecentWebtoons({
    super.key,
  });
  final bool isLoggedIn = true;
  List recentList = MyFavoriteData.recentData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoggedIn
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 15.0,
                          ),
                          const Icon(
                            Icons.refresh,
                            color: secondaryColor,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text("${recentList.length} items"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Image.network(
                        "https://i.ibb.co/Ks3vGcQ/Gambar-Whats-App-2023-03-08-pukul-02-17-43.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: recentList.length,
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
                                  recentList[index]['image'],
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
                                    recentList[index]['title'],
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    recentList[index]['author'],
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
              )
            : SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "No recently viewed series.",
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ));
  }
}
