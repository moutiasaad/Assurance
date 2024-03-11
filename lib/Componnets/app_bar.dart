import 'package:assurance/constant.dart';
import 'package:flutter/material.dart';
class CustomAppBar extends StatefulWidget {

  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {


  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
      child: Row(
        children: [
          Image.asset(
            "assets/img.png",
            height: 50, // Fixed height in pixels
            width: 250, // Fixed width in pixels
            alignment: Alignment.topLeft, // Choose a suitable alignment
          ),
          SizedBox(width: 5),
          Spacer(),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
          child:TextButton(onPressed: () {
            setState(() {
              Navigator.pushNamed(context, 'auto'); // Call the callback with updated value
            }); },
            child:Text("Automobile" , style : TextStyle(fontSize: 16,color: KTextColor))),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
            child:TextButton(onPressed: () {  },
              child:Text("Habitation" , style : TextStyle(fontSize: 16,color: KTextColor)),)),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
            child:TextButton(onPressed: () {  },
                child:Text("Responsabilité civile" , style : TextStyle(fontSize: 16 , color: KTextColor)))),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
            child:TextButton(onPressed: () {  },
            child:Text("Agent et d'expert en sinistres" , style : TextStyle(fontSize: 16,color: KTextColor)))),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
            child:TextButton(onPressed: () {  },
                child:Text("Diverses" , style : TextStyle(fontSize: 16,color: KTextColor)))),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
              child:ElevatedButton(onPressed: () {  },
                  child:Text("Inscrire" , style : TextStyle(fontSize: 16,color: kDarkButton)))),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
              child:ElevatedButton(onPressed: () {  },
                  child:Text("se connecter" , style : TextStyle(fontSize: 16,color: kDarkButton)))),
        ],
      ),
    );
  }
}
