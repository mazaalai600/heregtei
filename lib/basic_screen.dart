import 'package:flutter/material.dart';
import 'package:flutter_hicheel/my_first_widget.dart';
import 'package:flutter_hicheel/my_text.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Tsahim erdenet TBB'),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.edit),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AspectRatio(
            aspectRatio: 1.0,
            child: MyFirstWidget(),
          ),
          MyText(),
        ],
      ),
      drawer: Drawer(
        child: Container(
            color: Colors.lightBlue,
            child: const Center(
              child: Text('ene bol drawe'),
            )),
      ),
    );
  }
}
