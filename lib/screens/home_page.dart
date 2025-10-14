import 'package:coffe_shop/widgets/mybutton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 550,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/black-picture.jpg",
              height: 250,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/coffe.png",
              width: double.infinity,
              height: 550,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),

          Positioned(
            bottom: 200,
            left: 20,
            right: 20,
            child: Text(
              "Fall in Love with Coffee in Blissful Delight!",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 150,
            left: 20,
            right: 20,
            child: Text(
              "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 20,
            right: 20,
            child: MyButton(
              backcolor: "C67C4E",
              color: "FFFFFF",
              label: "Get Started",
              height: 60,
              width: 300,
              raduis: 15,
            ),
          ),
        ],
      ),
    );
  }
}
