import 'package:flutter/material.dart';
import 'package:tcc/core/utils/consts.dart';
import 'package:tcc/modules/app_shell/app_shell_page.dart';
import 'package:tcc/modules/login/widgets/login_custom_shape.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.branco,
            AppColors.azulClaro,
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
                          fontWeight: FontWeight.bold,
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
                      style: TextStyle(color: AppColors.grafite),
                      decoration: InputDecoration(
                        hintText: "E-mail",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: AppColors.grafite,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.grafite,
                            width: 2,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.grafite,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      style: TextStyle(color: AppColors.grafite),
                      decoration: InputDecoration(
                        hintText: "Senha",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: AppColors.grafite,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.grafite,
                            width: 2,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.grafite,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    if (!isKeyboard)
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Esqueceu a Senha?',
                            style: TextStyle(
                              color: AppColors.grafite,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    SizedBox(height: 32),
                    // MediaQuery.of(context).viewInsets.bottom == false ? Container() :
                    if (!isKeyboard)
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
                              AppColors.rosaMuitoClaro,
                              AppColors.rosaClaro,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                            ),
                            child: Text(
                              'ENTRAR',
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (!isKeyboard) Spacer(flex: 1),
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
