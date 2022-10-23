import 'package:flutter/material.dart';


class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'sain bnu',
          
        ),
        Text(
          'bitnii hiisen yum',
          style: Theme.of(context).textTheme.headline6,
        ),
        const Divider(),
        // ignore: prefer_const_constructors
        RichText(
          text: const TextSpan(
              text: 'bhsabx',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: 'vneheer',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                    children: [
                      TextSpan(
                          text: 'hvchiheg',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.double,
                            fontSize: 40,
                          ))
                    ])
              ]),
        ),
      ],
    );
  }
}
