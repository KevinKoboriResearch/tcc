import 'package:flutter/material.dart';
import 'package:tcc/models/revenue_model.dart';
import 'package:tcc/modules/revenues/widgets/revenue_item.dart';
import 'package:tcc/providers/revenues_provider.dart';
import 'package:tcc/modules/revenues/widgets/scroll_listener.dart';

// ignore: must_be_immutable
class RevenuesPage extends StatefulWidget {
  ScrollListener _model;
  final ScrollController _controller = ScrollController();

  RevenuesPage() {
    _model = ScrollListener.initialise(_controller);
  }

  @override
  _RevenuesPageState createState() => _RevenuesPageState();
}

class _RevenuesPageState extends State<RevenuesPage> {
  List<RevenueModel> revenuesList = RevenuesState().categoryPS5Controls;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      extendBody: true,
      body: AnimatedBuilder(
        animation: widget._model,
        builder: (context, child) {
          return Stack(
            children: [
              ListView.builder(
                controller: widget._controller,
                itemCount: revenuesList.length,
                itemBuilder: (_, index) =>
                    RevenueItem(revenueItem: revenuesList[index]),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: widget._model.bottom,
                child: _appBar,
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: widget._model.bottom,
                child: _bottomNavBar,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget get _appBar {
    return AppBar(
      elevation: 0,
      toolbarHeight: 48,
      backgroundColor: Colors.pink[300].withOpacity(0.9),
      leading: Icon(Icons.arrow_back_ios),
      titleSpacing: 0,
      centerTitle: true,
      title: Text(
        'Revenues',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget get _bottomNavBar {
    return Container(
      height: 48,
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.pink[300].withOpacity(0.9),
          contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          suffixIcon: Icon(Icons.search),
          hintText: "Search",
          hintStyle: TextStyle(
            fontSize: 16,
            color: Colors.white.withOpacity(0.7),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(
              color: Colors.pink[100],
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
