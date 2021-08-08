import 'package:flutter/material.dart';
import 'package:shop_app/modules/loginScreen.dart';
import 'package:shop_app/shared/components/components.dart';
import 'package:shop_app/shared/styles/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel(this.image, this.title, this.body);
}

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardingControl = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
        "assets/images/onboard_1.jpg", "On Board 1 Title", "On Board 1 body"),
    BoardingModel(
        "assets/images/onboard_1.jpg", "On Board 2 Title", "On Board 2 body"),
    BoardingModel(
        "assets/images/onboard_1.jpg", "On Board 3 Title", "On Board 3 body"),
  ];

  @override
  Widget build(BuildContext context) {
    bool isLast = false;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (value) {
                  if (value == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    onBoardingBuild(boarding[index]),
                itemCount: boarding.length,
                controller: boardingControl,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: boardingControl,
                  count: boarding.length,
                  effect: ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: defaultColor,
                      expansionFactor: 4,
                      dotHeight: 10,
                      dotWidth: 10),
                ),
                Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    if (isLast) {
                      navigateTo(context, LoginScreen());
                    } else {
                      boardingControl.nextPage(
                          duration: Duration(
                            milliseconds: 750,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn);
                    }
                  },
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget onBoardingBuild(BoardingModel boardingModel) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image(
              image: AssetImage(boardingModel.image),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            boardingModel.title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            boardingModel.body,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
}
