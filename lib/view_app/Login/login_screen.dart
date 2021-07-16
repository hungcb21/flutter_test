import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_test/view_app/Login/login_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _loginText(),
              SizedBox(
                height: 15,
              ),
              _descText(),
              SizedBox(
                height: 15,
              ),
              _groupButton(),
              SizedBox(
                height: 15,
              ),
              Image.asset("asset/images/background.png")
            ],
          ),
        ),
      ),
    );
  }

  ///Text
  Widget _loginText() {
    return Text(
      "Social Login",
      style: TextStyle(
          fontFamily: 'PlayfairDisplay',
          color: Colors.black,
          fontSize: 36,
          fontWeight: FontWeight.w700),
    );
  }

  Widget _descText() {
    return Text(
      "Make a login with social network accounts",
      style: TextStyle(
        fontFamily: 'Helvetica',
        color: Colors.black,
        fontSize: 16,
      ),
    );
  }

  ///Button Login
  Widget _groupButton() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LoginButton(() {}, "Sign in with Facebook", Image.asset("asset/images/facebook.png")),
          LoginButton(() {}, "Sign in with Google", Image.asset("asset/images/google.png")),
          LoginButton(() {}, "Sign in with Email ", Image.asset("asset/images/email.png")),
          _checkBox(),
          _forgotPassordButton()
        ],
      ),
    );
  }

  ///CheckBox
  Widget _checkBox() {
    return Padding(
      padding: EdgeInsets.fromLTRB(24, 5, 24, 0),
      child: Row(
        children: [
          Checkbox(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            checkColor: Colors.white,
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          RichText(
              text: TextSpan(
            text: "I agree",
            style: TextStyle(
                fontFamily: 'Helvetica', color: Colors.black, fontSize: 16),
            children: [
              TextSpan(
                  text: " Nitch’s Terms",
                  style: TextStyle(
                      fontFamily: 'Helvetica',
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold))
            ],
          ))
        ],
      ),
    );
  }

  ///Forgot Password
  Widget _forgotPassordButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(24, 5, 24, 0),
      child: InkWell(
        onTap: (){},
          child: Text(
        "Forgot your password?",
        style: TextStyle(
          fontFamily: 'Helvetica',
          color: Colors.black,
          fontSize: 16,
        ),
      )),
    );
  }
}
