import 'package:assurance/Componnets/app_bar.dart';
import 'package:flutter/material.dart';
class auto extends StatefulWidget {
  const auto({Key? key}) : super(key: key);

  @override
  State<auto> createState() => _autoState();
}

class _autoState extends State<auto> {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/auto.jpg"),
              fit: BoxFit.cover
          )
      ),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
