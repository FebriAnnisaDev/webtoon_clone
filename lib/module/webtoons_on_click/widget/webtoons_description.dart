import 'package:clone_webtoon/shared/util/const.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WebtoonsDescription extends StatelessWidget {
  String genre;
  String image;
  String title;
  String author;
  String description;
  WebtoonsDescription(
      {required this.genre,
      required this.image,
      required this.title,
      required this.author,
      required this.description,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      height: MediaQuery.of(context).size.height * 0.3,
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    genre,
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  SizedBox(
                    width: 150,
                    child: Text(
                      title,
                      style: const TextStyle(fontSize: 27),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    author,
                    style: const TextStyle(fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.remove_red_eye,
                        size: 14,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "13.9M",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(
                        Icons.person,
                        size: 14,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "220,135",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(
                        Icons.star,
                        size: 14,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "9.8",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.0,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Go to 1st Episode",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  size: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.0,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Become a Patreon",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  size: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 5,
              left: 200,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(image),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
