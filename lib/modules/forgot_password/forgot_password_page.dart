// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'package:tcc/views/control/send_email.dart';
// import 'package:tcc/utils/constants.dart';
// import 'package:flutter/services.dart';
// import 'package:tcc/func/flushbar.dart';
// import 'package:tcc/views/device/devices_page_list.dart';

// class ForgotPassword extends StatefulWidget {
//   ForgotPassword(this.emailAddress);
//   String? emailAddress;
//   @override
//   _ForgotPasswordState createState() => _ForgotPasswordState();
// }

// class _ForgotPasswordState extends State<ForgotPassword> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//       ),
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextFormField(
//               initialValue: widget.emailAddress,
//               textInputAction: TextInputAction.next,
//               textAlign: TextAlign.center,
//               cursorColor: AppColors.accentColor,
//               decoration: InputDecoration(
//                 hintText: "E - M A I L",
//                 hintStyle: TextStyle(
//                   color: AppColors.textColor,
//                   fontFamily: 'Astronaut_PersonalUse',
//                   fontSize: 18,
//                 ),
//                 border: InputBorder.none,
//               ),
//               keyboardType: TextInputType.emailAddress,
//               onChanged: (value) => widget.emailAddress = value,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 FirebaseAuth auth = FirebaseAuth.instance;
//                 auth
//                     .sendPasswordResetEmail(email: widget.emailAddress!)
//                     .then((email) {
//                   Navigator.of(context).pushReplacement(
//                     MaterialPageRoute(
//                       builder: (context) => SendEmail(widget.emailAddress),
//                     ),
//                   );
//                 }).catchError((onError) {
//                   showFlushbar(
//                     context,
//                     'ATENÇÃO!',
//                     "${onError.toString()}",
//                   );
//                 });
//               },
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.black,
//                 padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//                 textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               child: Text('Enviar Verificacao por email'),
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(
//                     builder: (context) => DevicesPageList(),
//                   ),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.red,
//                 padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//                 textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               ),
//               child: Text(
//                 'Voltar',
//                 style: TextStyle(
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
