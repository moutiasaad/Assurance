import 'package:flutter/material.dart';
class cards extends StatelessWidget {
  final String title;
  const cards({Key? key, required this.title, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.all(20),
      child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),child:Image.asset(
                "assets/$title.png",
                height: 100, // Fixed height in pixels
                width: 250, // Fixed width in pixels
                alignment: Alignment.topLeft, // Choose a suitable alignment
                ) ,
              ),
            ListTile(
              // title: const Text('Card title 1'),
              subtitle: Text(
                'Assurance $title',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
          ],
          )

    );
  }
}
