import 'package:flutter/material.dart';

class YummySearchListWidget extends StatefulWidget {
  final ScrollController controller;
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;

  const YummySearchListWidget({
    Key key,
    @required this.itemBuilder,
    @required this.itemCount,
    @required this.controller,
  }) : super(key: key);

  @override
  _YummySearchListWidgetState createState() => _YummySearchListWidgetState();
}

class _YummySearchListWidgetState extends State<YummySearchListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      controller: widget.controller,
      itemCount: widget.itemCount,
      itemBuilder: widget.itemBuilder,
    );
  }
}
