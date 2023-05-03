import 'package:flutter/material.dart';
import 'package:nexo_project/config/routes/routes_name.dart';
import 'package:nexo_project/view/onboarding_screen/widgets/items.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

/// This is for onboarding and introduction page
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  // Control the slider
  PageController controller = PageController();

  // Get the slider now from
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff010b40),
        /// Button
        floatingActionButton: floatingButton(),
        body: Stack(
          children: [
            /// Slider
            Positioned(
              top: 40,
              left: 15,
              right: 15,
              child: slider(),
            ),
            /// Introducing the company's services
            Positioned(
              bottom: 20,
              left: 15,
              right: 15,
              child: Container(
                height: Get.height * 0.55,
                decoration: decorateTheBox(),
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    /// somewhere between the slides
                    smoothPageIndicator(),
                    const SizedBox(height: 20,),
                    /// title
                    Text(items[currentPage].title,style: theme.headlineLarge),
                    /// Information content
                    textsOfInformation(),
                  ],
                ),
              ),
            ),
          ],
        ) ,
      ),
    );
  }

  Decoration decorateTheBox() {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.2),
      borderRadius: BorderRadius.circular(25));
  }

  Widget textsOfInformation() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: RichText(
          textAlign: TextAlign.justify,
          textDirection: TextDirection.rtl,
          text: TextSpan(
              style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
              text: items[currentPage].content)),
    );
  }

  Widget smoothPageIndicator() {
    /// animated page indicator
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: const ExpandingDotsEffect(
          activeDotColor: Colors.white, dotHeight: 8, dotWidth: 8),
    );
  }

  Widget slider() {
    return SizedBox(
      height: Get.height * 0.30,
      width: Get.width * 0.50,
      child: PageView.builder(
        controller: controller,
        itemCount: items.length,
        onPageChanged: (value) {
          setState(() {
            /// Pass the slide now to [currentPage] and rebuild screen with [setState()]
            currentPage = value;
          });
        },
        itemBuilder: (context, index) {
          /// This widget rounds the corners of the photo
          return Padding(
            // space between slides
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image(
                  image: items[index].image.image,
                  fit: BoxFit.cover,
                )),
          );
        },
      ),
    );
  }

  Widget floatingButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        backgroundColor: const Color(0xff010b40),
        onPressed: () {
          Get.offAllNamed(RoutesName.initialRoute);
        },
        child: const Icon(Icons.arrow_forward_rounded),
      ),
    );
  }
}
