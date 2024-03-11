import 'package:assurance/Componnets/app_bar.dart';
import 'package:assurance/Componnets/card.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _currentPage = 0;
  late PageController _pageController; // Use PageController

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage); // Initialize PageController
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 50),
          Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_left),
                  onPressed: () => _pageController.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  ),
                ),
                    Expanded(
                    child: Container( // Wrap Row with Container (Option 1)
                    width: double.infinity, // Set width to full available space
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AnimatedSwitcher(
                            switchInCurve: Curves.easeIn,
                            switchOutCurve: Curves.easeOut,
                            duration: Duration(milliseconds: 500),
                            child: Container( // Wrap PageView with Container (refined approach)
                              width: MediaQuery.of(context).size.width * 0.8, // Set width (adjust as needed)
                              child: PageView.builder(
                                controller: _pageController,
                                onPageChanged: (value) => setState(() => _currentPage = value),
                                itemCount: 2,
                                itemBuilder: (context, index) => cardRow(index),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                IconButton(
                  icon: Icon(Icons.arrow_right),
                  onPressed: () => _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardRow(int rowIndex) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: cards(title :"bike",),
          ),
          Expanded(
            child: cards(title :"car"),
          ),
          Expanded(
            child: cards(title :"health"),
          ),
          Expanded(
            child: cards(title:"travel"),
          ),
        ],
      ),
    );
  }
}
