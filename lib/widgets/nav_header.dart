import 'package:flutter_web/material.dart';
import 'package:portfolio_website/utils/reponsive_widget.dart';

class NavHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context) 
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SkDot(),

          if(!ResponsiveWidget.isSmallScreen(context))
            Row(
              children: <Widget>[
                NavButton(
                  text: "About",
                  onPressed: (){},
                ),
                NavButton(
                  text: "Work",
                  onPressed: (){},
                ),
                NavButton(
                  text: "Contact",
                  onPressed: (){},
                ),
              ],
            )
        ],
      ),
    );
  }
}

class SkDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row (
      children: <Widget>[
        Text(
          "AS",
          textScaleFactor: 2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange, 
          ),
        ),
      ],
    );
  }
}

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;
  final Color highLightedColor;

  const NavButton({
    Key key,
    @required this.text,
    @required this.onPressed,
    this.color = Colors.red,
    this.highLightedColor = Colors.blue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(color: color,),
      onPressed: onPressed,
      highlightedBorderColor: highLightedColor,
    );
  }
}