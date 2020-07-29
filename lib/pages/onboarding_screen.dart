import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _controller,
          children: [
            OnboardingPageWidget(
              stepTitle: 'Choose a Farmer',
              stepDescription:
                  'What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industrys standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?',
              imageUrl:
                  'https://cdni.iconscout.com/illustration/premium/thumb/concept-based-illustration-of-go-green-1958662-1653082.png',
              controller: _controller,
            ),
            OnboardingPageWidget(
              stepTitle: 'Pick your plant starter',
              stepDescription:
                  'What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industrys standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?',
              imageUrl:
                  'https://images-na.ssl-images-amazon.com/images/I/71we73QU5GL._AC_SX466_.jpg',
              controller: _controller,
            ),
            OnboardingPageWidget(
              stepTitle: 'Watch your plant grows',
              stepDescription:
                  'What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industrys standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?',
              imageUrl:
                  'https://media3.giphy.com/media/QaMK791mZtQiOOF4oT/giphy.gif',
              controller: _controller,
            )
          ],
        ),
      ),
    );
  }
}

class OnboardingPageWidget extends StatelessWidget {
  final String stepTitle;
  final String stepDescription;
  final String imageUrl;
  final PageController controller;

  const OnboardingPageWidget(
      {Key key,
      this.stepTitle,
      this.stepDescription,
      this.imageUrl,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Container(
            width: 300,
            height: 300,
            child: Image.network(imageUrl),
            // decoration: BoxDecoration(
            //   // color: darkBlue,
            //   image: DecorationImage(
            //     image: NetworkImage(imageUrl),
            //     fit: BoxFit.fill,
            //   ),
            // ),
          ),
        ),
        Text(
          stepTitle,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.only(right: 30, left: 30),
          child: Text(
            stepDescription,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          child: SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.teal),
          ),
        )
      ],
    );
  }
}
