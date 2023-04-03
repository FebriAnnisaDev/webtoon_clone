import 'package:flutter/material.dart';
import 'package:clone_webtoon/state_util.dart';
import '../view/bottom_navigation_bar_view.dart';

class BottomNavigationBarViewController extends State<BottomNavigationBarView>
    implements MvcController {
  static late BottomNavigationBarViewController instance;
  late BottomNavigationBarView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
