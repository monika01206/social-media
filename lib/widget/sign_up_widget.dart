import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media/page/auth_page.dart';
import 'google_sign_up_widget.dart';

class SignUpWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) =>
      Stack(
        fit: StackFit.expand,
        children: [
          buildSignUp(context),
        ],
      );

  Widget buildSignUp(BuildContext context) =>
    Column(
      children: [
        Spacer(),
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: 175,
            child: Text(
              'Social Media Integration App',
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/img/tsflogo.png"),
                  fit: BoxFit.cover,
                )
            ),
          ),
        ),
        Spacer(),
        Text('Login to continue'),
        SizedBox(height: 12),
        OutlineButton.icon(
          label: Text('Sign In with Email',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          highlightedBorderColor: Colors.white,
          borderSide: BorderSide(color: Colors.white),
          textColor: Colors.white,
          icon: FaIcon(FontAwesomeIcons.user, color: Colors.red),
          onPressed: () =>
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AuthPage()),
              ),
        ),
        SizedBox(height: 12),
        GoogleSignupButtonWidget(),
        Spacer()
      ],
    );
  }
