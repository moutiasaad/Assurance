import 'package:flutter/material.dart';
class cards extends StatelessWidget {
  final String title;
  const cards({Key? key, required this.title, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.all(20),
      child: SizedBox(
        width: double.infinity,
        height: 200, // Adjust the height as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Align children in the center horizontally
          mainAxisAlignment: MainAxisAlignment.center, // Align children in the center vertically
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/$title.png",
                height: 70,
                width: 250,
                alignment: Alignment.center, // Align the image within its container
              ),
            ),
            ListTile(
              subtitle: Text(
                'Assurance $title',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
