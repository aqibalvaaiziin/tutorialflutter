import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:fluttertutorial/helpers/global.dart';
import 'package:fluttertutorial/helpers/global_widget.dart';

class InputPage extends StatefulWidget {
  final String title;

  const InputPage({Key key, this.title}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isVisible = false;
  String nameValue = "";
  String passwordValue = "";

  int radioValue = 0;
  bool checkbox1 = true;
  bool checkbox2 = false;

  handleRadioValueChange(int value) {
    setState(() {
      radioValue = value;

      switch (radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
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
              boxExplain(ExplainText.input),
              buildForm(),
              // buildRadioButton(),
              // buildCheckBox(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildForm() {
    return Column(
      children: [
        inputForm("nama", Icons.person, name),
        inputForm("password", Icons.lock, password, isPassword: true),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          alignment: Alignment.centerLeft,
          child: Text("value nama : $nameValue"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  passwordValue = password.text;
                });
              },
              child: Text("cetak password"),
            ),
            SizedBox(
                width: 200, child: Text("value password : $passwordValue")),
          ],
        )
      ],
    );
  }

  Widget inputForm(
    String hint,
    IconData icon,
    TextEditingController controller, {
    TextInputType inputType = TextInputType.text,
    bool isPassword = false,
  }) {
    return Container(
      width: 350,
      height: 35,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
          width: 1.5,
        ),
      ),
      child: Center(
        child: TextField(
          scrollPadding: EdgeInsets.zero,
          obscureText: isPassword && isVisible,
          controller: controller,
          onChanged: (value) {
            if (!isPassword) {
              setState(() {
                nameValue = value;
              });
            }
          },
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            prefixIcon: Icon(
              icon,
              size: 20,
              color: Colors.grey,
            ),
            prefixIconConstraints: BoxConstraints(minHeight: 0, minWidth: 50),
            suffixIconConstraints: BoxConstraints(minHeight: 0, minWidth: 50),
            suffixIcon: isPassword
                ? InkWell(
                    onTap: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    child: Icon(
                      isVisible ? FontAwesome.eye : FontAwesome.eye_slash,
                      size: 20,
                      color: Colors.grey,
                    ),
                  )
                : SizedBox(),
          ),
          keyboardType: inputType,
        ),
      ),
    );
  }

  Widget buildRadioButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Radio(
          value: 0,
          groupValue: radioValue,
          onChanged: handleRadioValueChange,
        ),
        new Text(
          'First',
          style: new TextStyle(fontSize: 16.0),
        ),
        new Radio(
          value: 1,
          groupValue: radioValue,
          onChanged: handleRadioValueChange,
        ),
        new Text(
          'Second',
          style: new TextStyle(
            fontSize: 16.0,
          ),
        ),
        new Radio(
          value: 2,
          groupValue: radioValue,
          onChanged: handleRadioValueChange,
        ),
        new Text(
          'Last',
          style: new TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }

  Widget buildCheckBox() {
    return Row(
      children: [
        Checkbox(
          value: checkbox1,
          onChanged: (bool value) {
            setState(() {
              checkbox1 = value;
            });
          },
        ),
        Checkbox(
          value: checkbox2,
          onChanged: (bool value) {
            setState(() {
              checkbox2 = value;
            });
          },
        ),
      ],
    );
  }
}
