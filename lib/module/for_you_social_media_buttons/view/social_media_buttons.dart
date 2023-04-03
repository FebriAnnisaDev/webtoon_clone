import 'package:clone_webtoon/shared/util/const.dart';
import 'package:flutter/material.dart';

class ForYouSocialMediaButtons extends StatelessWidget {
  const ForYouSocialMediaButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(categoryPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage("https://i.ibb.co/SBysb0y/1.jpg"),
          ),
          SizedBox(
            width: 30.0,
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage("https://i.ibb.co/Lvvp3Vt/2.jpg"),
          ),
          SizedBox(
            width: 30.0,
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage("https://i.ibb.co/8mxMPbB/3.jpg"),
          ),
          SizedBox(
            width: 30.0,
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage("https://i.ibb.co/K5LqjZd/4.jpg"),
          ),
        ],
      ),
    );
  }
}
