import 'package:flutter/material.dart';
import 'package:clone_webtoon/core.dart';

class BottomNavigationBarView extends StatefulWidget {
  const BottomNavigationBarView({Key? key}) : super(key: key);

  Widget build(context, BottomNavigationBarViewController controller) {
    controller.view = this;
    return DefaultTabController(
      length: 5,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            ForYouView(),
            const OriginalView(),
            const CanvasView(),
            const MyFavoriteView(),
            const MoreView(),
          ],
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.black),
          child: BottomNavigationBar(
            currentIndex: controller.selectedIndex,
            selectedItemColor: const Color.fromARGB(255, 0, 220, 100),
            unselectedItemColor: Colors.grey[600],
            selectedFontSize: 10,
            unselectedFontSize: 10,
            onTap: (newIndex) => controller.updateIndex(newIndex),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.star_border),
                activeIcon: Icon(Icons.star),
                label: "FOR YOU",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.extension_outlined,
                ),
                activeIcon: Icon(Icons.extension),
                label: "ORIGINAL",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.note_outlined),
                activeIcon: Icon(Icons.note),
                label: "CANVAS",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person),
                label: "MY FAVORITE",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz_outlined),
                activeIcon: Icon(Icons.more_horiz),
                label: "MORE",
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<BottomNavigationBarView> createState() =>
      BottomNavigationBarViewController();
}
