import 'package:flutter/material.dart';

class LalaPage extends StatefulWidget {
  @override
  _LalaPageState createState() => _LalaPageState();
}

class _LalaPageState extends State<LalaPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("belajar"),
          centerTitle: false,
        ),
        // body: Container(
        //   width: 150,
        //   height: 150,
        //   decoration: BoxDecoration(
        //     color: Colors.red,
        //   ),
        //   child: Center(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         timesText("lala", size: 10),
        //         timesText("lala"),
        //         timesText("lala"),
        //         timesText("lala"),
        //       ],
        //     ),
        //   ),
        // ),
        body: Center(
          child: Image.network(
            "https://images.pexels.com/photos/6081496/pexels-photo-6081496.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget timesText(
    String text, {
    double size = 20,
  }) {
    return Text(
      text,
      style: TextStyle(fontSize: size),
    );
  }
}
