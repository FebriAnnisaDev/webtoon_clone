import 'package:flutter/material.dart';

class MoreButtons extends StatelessWidget {
  final IconData moreIcon;
  final String moreTitle;

  const MoreButtons({
    required this.moreIcon,
    required this.moreTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade900,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    moreIcon,
                    size: 40,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(moreTitle),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
