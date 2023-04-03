import 'package:flutter/material.dart';
import '../../../data/my_favorite_data.dart';
import '../../../shared/util/const.dart';

// ignore: must_be_immutable
class MyFavoriteCreators extends StatelessWidget {
  MyFavoriteCreators({
    super.key,
  });

  final bool hasFollowedData = true;
  List creatorsList = MyFavoriteData.creatorsData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: hasFollowedData
          ? ListView.builder(
              itemCount: creatorsList.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(defaultPadding),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.network(
                          "https://i.ibb.co/F4ZCbdR/Gambar-Whats-App-2023-03-08-pukul-03-03-56.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        creatorsList[index]['author'],
                        style: const TextStyle(
                          fontSize: 16.0,
                        ),
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
                SizedBox(
                  width: 300,
                  child: Text(
                    "Please log into your account to view the creators that you follow.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
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
                      "LOG IN",
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
