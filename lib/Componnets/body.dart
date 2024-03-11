import 'package:assurance/constant.dart';
import 'package:flutter/material.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("SK-ASSURANCE",
            style: Theme.of(context).textTheme.headline1!.copyWith(
              color: KTextColor,
              fontWeight: FontWeight.bold
              )
            ),
            Text("Bienvenue sur SK-ASSURANCE ! "
                "\n Votre partenaire de confiance pour tous vos besoins en assurance.\n Contactez-nous dès maintenant pour sécuriser votre avenir",
            style: TextStyle(fontSize: 21,
            color: KTextColor),)
          ],
        )
    );
  }
}
