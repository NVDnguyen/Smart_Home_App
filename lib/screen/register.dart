import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/login.dart';
import 'package:flutter_application_2/widgets/button_log.dart';
import 'package:flutter_application_2/widgets/button_social.dart';
import 'package:flutter_application_2/widgets/text_button.dart';
import 'package:flutter_application_2/widgets/text_field.dart';
import 'package:flutter_application_2/widgets/text_title.dart';


class RegisterScreen extends StatefulWidget {
  @override
  _registerScreenState createState() => _registerScreenState();
}

class _registerScreenState extends State<RegisterScreen> {
  late TextEditingController _userNameEditingController;
  late TextEditingController _emailEditingController;
  late TextEditingController _addressNameEditingController;
  late TextEditingController _passwordNameEditingController;

  @override
  void initState() {
    super.initState();
    _userNameEditingController = TextEditingController();
    _emailEditingController = TextEditingController();
    _addressNameEditingController = TextEditingController();
    _passwordNameEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    _userNameEditingController.dispose();
    _emailEditingController.dispose();
    _addressNameEditingController.dispose();
    _passwordNameEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                child: const TitleTextWidget(text: "Create"),
              ),
              const SizedBox(
                child: const TitleTextWidget(text: "Your Account"),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                child: Center(
                  child: Column(
                    children: [
                      TextFieldtWidget(
                          labelText: "User Name",
                          textEditingController: _userNameEditingController,
                          icon: Icons.email_outlined),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFieldtWidget(
                          labelText: "Email",
                          textEditingController: _emailEditingController,
                          icon: Icons.email_outlined),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFieldtWidget(
                          labelText: "Address",
                          textEditingController: _addressNameEditingController,
                          icon: Icons.account_balance_outlined),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFieldtWidget(
                          labelText: "Password",
                          textEditingController: _passwordNameEditingController,
                          icon: Icons.lock_clock_outlined),
                      const SizedBox(
                        height: 20,
                      ),
                      ButtonLogWidget(
                        colorButton: Color.fromARGB(255, 9, 11, 90),
                        colorText: Colors.white,
                        screenToNavigate: LoginScreen(),
                        text: "Register",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already Have An Account ?",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 150, 147, 147)),
                            ),
                            TextButtonWidget(
                                buttonText: "Sign in", screen: LoginScreen())
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
