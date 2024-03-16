import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/screen/register.dart';
import 'package:flutter_application_2/widgets/button_log.dart';
import 'package:flutter_application_2/widgets/button_social.dart';
import 'package:flutter_application_2/widgets/text_button.dart';
import 'package:flutter_application_2/widgets/text_field.dart';
import 'package:flutter_application_2/widgets/text_title.dart';


class LoginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<LoginScreen> {
  late TextEditingController _emailEditingController;
  late TextEditingController _passwordEditingController;

  @override
  void initState() {
    super.initState();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    _emailEditingController.dispose();
    _passwordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(Object context) {
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color.fromRGBO(247, 248, 250, 1),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              const SizedBox(
                width: 150,
                height: 50,
                child: const TitleTextWidget(text: "Login"),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                child: Center(
                  child: Column(
                    children: [
                      TextFieldtWidget(
                          labelText: "Email",
                          textEditingController: _emailEditingController,
                          icon: Icons.email_outlined),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFieldtWidget(
                          labelText: "Password",
                          textEditingController: _passwordEditingController,
                          icon: Icons.lock_clock_outlined),
                      SizedBox(
                          height: 50,
                          child: TextButtonWidget(
                              buttonText:
                                  "                                                        Forget Password ?",
                              screen: LoginScreen())),
                      const SizedBox(
                        height: 10,
                      ),
                      ButtonLogWidget(
                        colorButton: Color.fromARGB(255, 9, 11, 90),
                        colorText: Colors.white,
                        screenToNavigate: LoginScreen(),
                        text: "Log in",
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Create New Account ?",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 150, 147, 147)),
                            ),
                            TextButtonWidget(
                                buttonText: "Sign up", screen: RegisterScreen())
                          ],
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 150, 147, 147),
                        height: 50,
                      ),
                      SocialButtonRow(
                          onGooglePressed: () {}, onFacebookPressed: () {}),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
