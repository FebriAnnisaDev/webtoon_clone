import 'package:flutter/material.dart';
import 'package:clone_webtoon/state_util.dart';
import '../view/original_view.dart';

class OriginalViewController extends State<OriginalView>
    implements MvcController {
  static late OriginalViewController instance;
  late OriginalView view;

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
