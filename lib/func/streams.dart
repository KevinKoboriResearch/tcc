// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:remottely/utils/constants.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'package:remottely/data/firestore/users_collection.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// List streamUsersList(List<dynamic> usersList, listType, double fontSize,
//     FontWeight fontWeight, int maxLines) {
//   List<Widget> list = [];
//   for (var i = 0; i < usersList.length; i++) {
//     if (usersList[i] != '' && usersList[i] != null) {
//       list.add(
//         StreamBuilder(
//           stream: UsersCollection().userSnapshots(usersList[i]!),
//           builder: (context, AsyncSnapshot<DocumentSnapshot> userSnapshot) {
//             if (!userSnapshot.hasData) {
//               Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//             return Row(
//               children: [
//                 Flexible(
//                   child: Text(
//                     !userSnapshot.data!.exists
//                         ? 'Usuário desabilitado'
//                         : userSnapshot.data!['userName'] != null
//                             ? userSnapshot.data!['userName'].toUpperCase()
//                             : 'não temos o nome do usuário',
//                     maxLines: maxLines,
//                     overflow: TextOverflow.ellipsis,
//                     style: TextStyle(
//                       color: AppColors.accentColor,
//                       fontSize: fontSize,
//                       fontWeight: fontWeight,
//                     ),
//                   ),
//                 ),
//                 listType == 'managers'
//                     ? Padding(
//                         padding: const EdgeInsets.only(left: 4.0),
//                         child: Icon(
//                           Icons.settings,
//                           color: AppColors.accentColor,
//                           size: fontSize,
//                         ),
//                       )
//                     : Container(),
//               ],
//             );
//           },
//         ),
//       );
//     } else {
//       list.add(
//         Text(
//           'usuário não existe*'.toUpperCase(),
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//           style: TextStyle(
//             color: AppColors.redColor,
//             fontSize: 16,
//           ),
//         ),
//       );
//     }
//   }
//   return list;
// }
