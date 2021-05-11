import 'package:flutter/material.dart';
import 'package:fluttertutorial/materi/content_widget.dart';
import 'package:fluttertutorial/helpers/global_widget.dart';
import 'package:fluttertutorial/materi/input_widget.dart';
import 'package:fluttertutorial/materi/layouting_widget.dart';
import 'package:fluttertutorial/materi/statefull_page.dart';

class HomePage extends StatelessWidget {
  final bool istest;

  const HomePage({Key key, this.istest = false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(istest ? "test dispose" : "Daftar Materi"),
        ),
        body: Center(
          child: istest
              ? Text("test dispose")
              : ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    buttonMateri(
                      context,
                      "Content Widget",
                      ContentWidget(
                        title: "Content Widget",
                      ),
                    ),
                    buttonMateri(
                      context,
                      "Layouting Widget",
                      LayoutingWidget(
                        title: "Layouting Widget",
                      ),
                    ),
                    buttonMateri(
                      context,
                      "Statefull Widget",
                      StatefullTestPage(
                        title: "Statefull Widget",
                      ),
                    ),
                    buttonMateri(
                      context,
                      "Input Widget",
                      InputPage(
                        title: "Input Widget",
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Widget buttonMateri(
    BuildContext context,
    String title,
    Widget page,
  ) {
    return ElevatedButton(
      onPressed: () {
        nextPage(context, page);
      },
      child: Text(title),
    );
  }
}
