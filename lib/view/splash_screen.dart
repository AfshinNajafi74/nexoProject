import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nexo_project/config/routes/routes_name.dart';

///This widget call when person opens app that shows app's logo
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _opacityAnimation;
  
  @override
  void initState() {
    _animationController = AnimationController(duration: const Duration(seconds: 3),vsync: this);
    _opacityAnimation = Tween<double>(begin: 0,end: 1).animate(_animationController!);
    _animationController!.forward();

    /// This is async method that after 8 seconds delayed going to view OnboardingScreen
    Future.delayed(const Duration(seconds: 8), (){
      Get.offAllNamed(RoutesName.onboardingScreen);
    });
    super.initState();
  }

  @override
  void dispose() {
    /// Close controller animation => for application performance
    _animationController!.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff010b40),
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController!,
          builder: (context, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Fade child animatedly
                // image
                AnimatedOpacity(
                  duration: const Duration(seconds: 3),
                  opacity: _opacityAnimation!.value,
                  child: SvgPicture.asset("assets/images/logored.svg")
                ),
                const SizedBox(height: 30,),
                /// Fade child animatedly
                // text
                AnimatedOpacity(
                  duration: const Duration(seconds: 3),
                  opacity: _opacityAnimation!.value,
                  /// This widget animates the given text from bottom to top
                  child: Transform.translate(
                    offset: Offset(0.0, (1.0 - _opacityAnimation!.value) * Get.height),
                    child: Text("لذت یک زندگی آرام با نکسو",style: TextStyle(
                      /// Changing the text appearance style
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2
                        ..color = Colors.blue[700]!,
                      fontSize: 30,),),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
