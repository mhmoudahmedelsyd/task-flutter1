import 'package:courestest/note_app/home_layout.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        duration:700 ,
        splashIconSize: double.infinity,
        pageTransitionType: PageTransitionType.rightToLeft,
        splashTransition: SplashTransition.slideTransition,
        curve:Curves.easeInCirc ,
        centered: true,
        animationDuration:Duration(seconds: 2),
        splash:Container(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                      ),
                      child: Image(
                        image: AssetImage('assets/images/Notes.png'),
                        height: 28.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image(
                      image: AssetImage('assets/images/Path 1.png'),
                      fit: BoxFit.cover,
                    ),
                    Image(
                      image: AssetImage('assets/images/Path 2.png'),
                      fit: BoxFit.cover,
                    ),
                    Image(
                      image: AssetImage('assets/images/Path 3.png'),
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Positioned(
                  top: 258.0,
                  left: 40.0,
                  child: Image(
                    image: AssetImage('assets/images/MDI - pencil.png'),
                  ),
                ),
              ],
            ),
          ),
        nextScreen: HomeLayout(),
      ),
    );
  }

}
