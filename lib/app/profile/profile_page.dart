// import "package:flutter/material.dart";
// import "dart:ui";
// // import "package:flutter_card_swipper/flutter_card_swiper.dart";
// // import "package:tcc/widgets/product_card.dart";
// import "package:flutter_svg/flutter_svg.dart";
// import "package:flutter_neumorphic/flutter_neumorphic.dart";
// // import "package:visibility_detector/visibility_detector.dart";
// import 'package:tcc/models/revenue_model.dart';
// import "package:tcc/utils/consts.dart";
// import 'package:tcc/providers/revenues_provider.dart';

// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   List<RevenueModel> revenuesList = RevenuesState().categoryPS5Controls;
//   // int indexPage = 0;
//   // int indexType = 0;
//   // int isCurrentItem = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             // toolbarHeight: 48,
//             expandedHeight: 200,
//             backgroundColor: Colors.pink[300].withOpacity(0.8),
//             floating: true,
//             leading: Container(),
//             flexibleSpace: Container(
//               height: 224,
//               color: Colors.pink[300],
//               // child: ,
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 return Container(
//                   color: Colors.black,
//                   height: 200,
//                 );
//               },
//               childCount: revenuesList.length,
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: SizedBox(
//               height: 56,
//             ),
//           ),
//         ],
//       ),
//       // Container(
//       //   padding: EdgeInsets.all(8),
//       //   height: 38,
//       //   color: Colors.pink[300].withOpacity(0.7),
//       // ),
//       // bottomNavigationBar: Container(
//       //   padding: EdgeInsets.all(8),
//       //   height: 60,
//       //   color: Colors.pink[300].withOpacity(0.5),
//       //   child: Align(
//       //     alignment: Alignment.topCenter,
//       //     child: Text(
//       //       'Revenues',
//       //       style: TextStyle(
//       //         fontSize: 18,
//       //         fontWeight: FontWeight.bold,
//       //       ),
//       //     ),
//       //   ),
//       // ),
//     );
//   }
// }
