import 'package:flutter/material.dart';
import 'package:fluttertutorial/helpers/global.dart';

class StatefullTestPage extends StatefulWidget {
  final String title;

  const StatefullTestPage({Key key, this.title}) : super(key: key);
  @override
  _StatefullTestPageState createState() => _StatefullTestPageState();
}

class _StatefullTestPageState extends State<StatefullTestPage> {
  int counter;

  @override
  void initState() {
    super.initState();
    counter = 1;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              boxExplanation(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text("-"),
                    onPressed: () {
                      if (counter > 1) {
                        setState(() {
                          counter--;
                        });
                      }
                    },
                  ),
                  Text(counter.toString()),
                  ElevatedButton(
                    child: Text("+"),
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget boxExplanation() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.5),
          borderRadius: BorderRadius.circular(4),
        ),
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: ExplainText.statefull,
                style: TextStyle(
                  fontSize: 11,
                  height: 1.5,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: "\n\nCatatan :",
                style: TextStyle(
                  fontSize: 11,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text:
                    "\n- function yang digunakan untuk menjalankan printah saat halaman pertama dibuka",
                style: TextStyle(
                  fontSize: 11,
                  height: 1.5,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: " initState();",
                style: TextStyle(
                  fontSize: 11,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text:
                    "\n- function yang digunakan untuk merubah value tersebut\nadalah ",
                style: TextStyle(
                  fontSize: 11,
                  height: 1.5,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: "SetState({});",
                style: TextStyle(
                  fontSize: 11,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text:
                    "\n- function yang digunakan untuk menghapus state saat\nkeluar/ berpindah halaman",
                style: TextStyle(
                  fontSize: 11,
                  height: 1.5,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: " dispose();",
                style: TextStyle(
                  fontSize: 11,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ));
  }
}
