import 'package:flutter/material.dart';

class DeepTree extends StatelessWidget {
  const DeepTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('sain bnuu'),
              Text('end bvh widget bn'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlutterLogo(),
                  Text('ene bol logo'),
                ],
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
