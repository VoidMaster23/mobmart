import 'package:flutter/material.dart';
import 'package:mobmart/components/get_started_back_image.dart';
import 'package:mobmart/components/rounded_button.dart';
import 'package:transparent_image/transparent_image.dart';

import '../constants.dart';

//this might change
class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                fadeInDuration: Duration(milliseconds: 1200),
                image: AssetImage('images/logo.png'),
              ),
              GetStartedBackImage(),
              Text(
                'Digital payment made easy',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RoundedButton(
                    onPressed: () {},
                    title: 'Get Started',
                    color: kMobBlue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
