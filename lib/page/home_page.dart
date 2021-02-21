import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media/provider/google_sign_in.dart';
import 'package:social_media/widget/logged_in.dart';
import 'package:social_media/widget/sign_up_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        final provider = Provider.of<GoogleSignInProvider>(context);

        if (provider.isSigningIn) {
          return buildLoading();
        } else if (snapshot.hasData) {
          return LoggedInWidget();
        } else {
          return SignUpWidget();
        }
      },
    ),
  );

  Widget buildLoading() => Stack(
    fit: StackFit.expand,
    children: [
      CustomPaint(),
      Center(child: CircularProgressIndicator()),
    ],
  );
}