import 'package:flutter_web/material.dart';
import 'package:portfolio_website/utils/reponsive_widget.dart';
import 'package:portfolio_website/widgets/nav_header.dart';

class SocialInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              NavButton(
                text: "Github",
                onPressed: () {},
                color: Colors.blue,
              ),
              NavButton(
                text: "Twitter",
                onPressed: () {},
                color: Colors.blue,
              ),
              NavButton(
                text: "Facebook",
                onPressed: () {},
                color: Colors.blue,
              ),
            ],
          ),
          Text(
            "Suman Kumar ©️2019",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          NavButton(
            text: "Github",
            onPressed: () {},
            color: Colors.blue,
          ),
          NavButton(
            text: "Twitter",
            onPressed: () {},
            color: Colors.blue,
          ),
          NavButton(
            text: "Facebook",
            onPressed: () {},
            color: Colors.blue,
          ),
          Text(
            "Suman Kumar ©️2019",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}