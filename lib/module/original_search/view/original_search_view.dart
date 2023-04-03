import 'package:flutter/material.dart';

import '../../../../../../shared/util/const.dart';

class OriginalSearchView extends StatelessWidget {
  const OriginalSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 0.6,
        children: List.generate(16, (index) {
          return Container(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey.shade900,
                  child: const Icon(
                    Icons.face,
                    size: 40,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text("Genre"),
              ],
            ),
          );
        }),
      ),
    );
  }
}
