import 'package:flutter/cupertino.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'view/widgets/bottom_app_bar.dart';


class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 5,
          backgroundColor: Colors.white,
          navigateAfterSeconds:  SharedBottomAppBar(),
          loaderColor: Colors.transparent,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/img/logo.jpeg"),
                        fit: BoxFit.contain
                    )
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}




