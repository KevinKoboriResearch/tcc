import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   // this is where I would like to set some minimum constraint
          //   expandedHeight: 300,
          //   floating: false,
          //   pinned: true,
          //   bottom: PreferredSize(
          //     // Add this code
          //     preferredSize: Size.fromHeight(60.0), // Add this code
          //     child: Text(''), // Add this code
          //   ), // Add this code
          //   flexibleSpace: Container(
          //     padding: EdgeInsets.all(16),
          //     height: 340,
          //     width: double.infinity,
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: <Widget>[
          //         // Container(
          //         //   height: 40,
          //         // ),
          //         // Container(
          //         //   height: 60,
          //         // ),
          //         // Expanded(child: Container()),
          //         Text('Rafael'),
          //       ],
          //     ),
          //     decoration: BoxDecoration(
          //         image: DecorationImage(
          //             image: NetworkImage('https://picsum.photos/400/400'),
          //             fit: BoxFit.cover)),
          //   ),
          // ),
          SliverAppBar(
              // this is where I would like to set some minimum constraint
              expandedHeight: 200,
              floating: false,
              pinned: true,
              backgroundColor: Colors.pink[300],
              // collapsedHeight: 100,
              // title: Text('oi'),
              // titleSpacing: 100,
              // centerTitle: true,
              // bottom: PreferredSize(
              //   // Add this code
              //   preferredSize: Size.fromHeight(60.0), // Add this code
              //   child: Text(''), // Add this code
              // ), // Add this code
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                background: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.network(
                      'https://food-nutrition.brenntag.com/content/images/food-nutrition/gettyimages-470309482_text_media.jpg',
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 6.0,
                            sigmaY: 6.0,
                          ),
                          child: Container(
                            height: 228,
                            // padding: EdgeInsets.all(24),
                            color: Colors.pink[300].withOpacity(0.6),
                            // child: Image.network(
                            //   'https://food-nutrition.brenntag.com/content/images/food-nutrition/gettyimages-470309482_text_media.jpg',
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Stack(
                //   children: [
                //     Container(
                //       // height: 200,
                //       decoration: BoxDecoration(
                //         image: DecorationImage(
                //           image: NetworkImage(
                //             'https://food-nutrition.brenntag.com/content/images/food-nutrition/gettyimages-470309482_text_media.jpg',
                //           ),
                //           fit: BoxFit.cover,
                //         ),
                //         // shape: BoxShape.circle,
                //       ),
                //       // child: Image.network(
                //       //   'https://food-nutrition.brenntag.com/content/images/food-nutrition/gettyimages-470309482_text_media.jpg',
                //       //   fit: BoxFit.cover,
                //       // ),
                //     ),
                //     Container(
                //       height: 200,
                //       width: 200,
                //       child: BackdropFilter(
                //         filter: ImageFilter.blur(
                //           sigmaX: 10.0,
                //           sigmaY: 10.0,
                //         ),
                //         child: Container(
                //           height: 200,
                //           width: 200,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                title: Row(
                  children: [
                    Icon(Icons.ac_unit),
                    SizedBox(width: 8),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        'Kevin Yuji Kobori Kobori',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              )
              // Container(
              //   padding: EdgeInsets.all(16),

              // ),
              ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Column(
                children: [],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              // mainAxisSpacing: 16.0,
              // crossAxisSpacing: 16.0,
              childAspectRatio: 1.4,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.pink[300],
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.pink[300],
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.pink[300],
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.pink[300],
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.pink[300],
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.pink[300],
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.pink[300],
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.pink[300],
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.pink[300],
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.pink[300],
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
