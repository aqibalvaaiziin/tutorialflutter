import 'package:flutter/material.dart';
import 'package:fluttertutorial/helpers/global.dart';
import 'package:fluttertutorial/helpers/global_widget.dart';

class LayoutingWidget extends StatelessWidget {
  final String title;

  const LayoutingWidget({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              boxInfo(),
              buildContainer(),
              // buildColumn(),
              // buildRow(),
              // buildStack(),
              // buildListView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer() {
    return Column(
      children: [
        boxExplain(ExplainText.container),
        Container(
          width: 150,
          height: 150,
          margin: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3),
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300],
                  blurRadius: 4,
                  spreadRadius: 2,
                  offset: Offset(1, 2),
                ),
              ]),
          child: Center(
            child: Text("ini container"),
          ),
        ),
      ],
    );
  }

  Widget buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        boxExplain(ExplainText.column),
        Text(
          "ini",
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        Text(
          "adalah",
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        Text(
          "column",
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      ],
    );
  }

  Widget buildRow() {
    return Column(
      children: [
        boxExplain(ExplainText.row),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "ini",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            Text(
              "adalah",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            Text(
              "row",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildStack() {
    return Column(
      children: [
        boxExplain(ExplainText.stack),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.red,
            ),
            Container(
              width: 130,
              height: 130,
              color: Colors.lightBlue,
            ),
            Text("ini stack")
          ],
        ),
      ],
    );
  }

  Widget buildListView() {
    return Column(
      children: [
        boxExplain(ExplainText.listview),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          itemCount: 99,
          itemBuilder: (context, index) {
            return Text(index.toString());
          },
        ),
      ],
    );
  }
}
