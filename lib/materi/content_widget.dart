import 'package:flutter/material.dart';
import 'package:fluttertutorial/helpers/global_widget.dart';

class ContentWidget extends StatelessWidget {
  final String title;

  const ContentWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(children: [
          boxInfo(),
          Center(
            // child: buildText(),
            child: buildImage(),
          ),
        ]),
      ),
    );
  }

  Widget buildText() {
    return Text(
      "Hello world!!",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 5,
        color: Colors.blue,
      ),
    );
  }

  Widget buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Image.network(
        "https://images.pexels.com/photos/2659177/pexels-photo-2659177.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        width: 150,
        height: 210,
        fit: BoxFit.cover,
        loadingBuilder: (
          BuildContext context,
          Widget widget,
          ImageChunkEvent loadingProgress,
        ) {
          if (loadingProgress == null) return widget;
          return Container(
            width: 150,
            height: 210,
            color: Colors.grey[300],
            child: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                  Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
