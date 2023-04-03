import 'package:flutter/material.dart';
import 'package:clone_webtoon/state_util.dart';
import '../view/for_you_view.dart';

class ForYouViewController extends State<ForYouView> implements MvcController {
  static late ForYouViewController instance;
  late ForYouView view;

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
