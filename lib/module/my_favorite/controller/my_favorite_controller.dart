import 'package:flutter/material.dart';
import 'package:clone_webtoon/state_util.dart';
import '../view/my_favorite_view.dart';

class MyFavoriteController extends State<MyFavoriteView>
    implements MvcController {
  static late MyFavoriteController instance;
  late MyFavoriteView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
