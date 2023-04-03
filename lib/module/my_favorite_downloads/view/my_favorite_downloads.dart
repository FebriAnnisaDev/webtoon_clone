import 'package:flutter/material.dart';

import '../../../data/MY_favorite_data.dart';

// ignore: must_be_immutable
class MyFavoriteDownloads extends StatelessWidget {
  MyFavoriteDownloads({
    super.key,
  });
  final bool hasDownloadData = true;
  List downloadsList = MyFavoriteData.downloadsData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: hasDownloadData
          ? ListView.builder(
              itemCount: downloadsList.length,
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
                          downloadsList[index]['image'],
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
                            downloadsList[index]['title'],
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            downloadsList[index]['author'],
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
          : Center(
              child: Text(
                "No downloads.",
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
            ),
    );
  }
}
