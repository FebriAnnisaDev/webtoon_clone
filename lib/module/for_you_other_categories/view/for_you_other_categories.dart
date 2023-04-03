import 'package:flutter/material.dart';

import '../../../shared/util/const.dart';

class ForYouOtherCategories extends StatelessWidget {
  final String categoryName;

  const ForYouOtherCategories({
    required this.categoryName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(categoryPadding),
      child: Row(
        children: [
          Text(
            categoryName,
            style: const TextStyle(
              fontSize: categoryTitleFont,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          const Icon(Icons.navigate_next),
        ],
      ),
    );
  }
}
