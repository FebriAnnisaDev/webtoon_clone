import 'package:flutter/material.dart';
import 'package:clone_webtoon/state_util.dart';
import '../view/canvas_view.dart';

class CanvasController extends State<CanvasView> implements MvcController {
  static late CanvasController instance;
  late CanvasView view;

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