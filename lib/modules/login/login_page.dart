import 'package:flutter/material.dart';
import 'package:tcc/modules/app_shell/app_shell_page.dart';
import 'package:tcc/modules/login/widgets/login_custom_shape.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white,
            Colors.pink[300],
          ],
        )),
        child: CustomPaint(
          painter: LoginCustomShape(260),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 32),
                      Image.asset(
                        'assets/logos/yummy_logo.png',
                        height: MediaQuery.of(context).size.height * 0.14,
                      ),
                      Text(
                        'Yummy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Spacer(flex: 3),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "E-mail",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.pink[100],
                            width: 2,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.pink[100],
                            width: 2,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                    // MediaQuery.of(context).viewInsets.bottom == false ? Container() :
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(0, 4),
                            blurRadius: 5.0,
                          )
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.0, 1.0],
                          colors: [
                            Colors.pink[200],
                            Colors.pink[300],
                          ],
                        ),
                        color: Colors.deepPurple.shade300,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          // minimumSize: MaterialStateProperty.all(Size(600, 50)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          // elevation: MaterialStateProperty.all(3),
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AppShell(),
                            ),
                          );
                          // onpressed();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 18,
                              // fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(flex: 1),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
