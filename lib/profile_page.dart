import 'package:flutter_web/material.dart';
import 'package:portfolio_website/utils/reponsive_widget.dart';
import 'package:portfolio_website/widgets/nav_header.dart';
import 'package:portfolio_website/widgets/profile_info.dart';
import 'package:portfolio_website/widgets/social_info.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
        ),
        drawer: ResponsiveWidget.isSmallScreen(context) 
                ? Drawer(
                    child: ListView(
                      padding: const EdgeInsets.all(20),
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
                    ),
                  ) 
                : null,
        
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NavHeader(),
                  
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),

                  ProfileInfo(),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  
                  SocialInfo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}