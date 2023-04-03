import 'package:flutter/material.dart';

import '../../../shared/util/const.dart';

class ForYouOngoingEvents extends StatelessWidget {
  const ForYouOngoingEvents({
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
                "Ongoing Events",
                style: TextStyle(
                  fontSize: categoryTitleFont,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            height: 250.0,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://dafunda.com/wp-content/uploads/2019/03/Foto-1.jpg",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  5.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
