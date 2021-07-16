import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Image icon;

  LoginButton(@required this.onPressed,@required this.text,@required this.icon);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 44,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width:  1.5 ,
        ),
      ),
      margin: EdgeInsets.fromLTRB(24, 20, 24, 0),
      child: RaisedButton(
        color: Colors.white,
        onPressed: onPressed,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 13,
                ),
                  child: icon),
              Text(text,style: TextStyle(
                fontFamily: 'Helvetica',color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
