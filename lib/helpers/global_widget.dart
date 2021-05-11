import 'package:flutter/material.dart';

void nextPage(BuildContext context, dynamic page) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}

void nextPageReplacement(BuildContext context, dynamic page) {
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}

void backScreen(BuildContext context) {
  Navigator.of(context).pop();
}

void nextPageRemove(BuildContext context, dynamic page) {
  Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(
      builder: (context) => page,
    ),
    (route) => false,
  );
}

Widget boxInfo() {
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
              text:
                  "Untuk code program sudah tersedia di folder materi,\ndan untuk file namanya sama dengan nama pada AppBar,",
              style: TextStyle(
                fontSize: 11,
                height: 1.5,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "\nuntuk merubah materi tinggal uncomment aja codingnya",
              style: TextStyle(
                fontSize: 11,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        ),
      ));
}

Widget boxExplain(String text) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
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
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Penjelasan :",
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.bold,
            height: 1.5,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 11,
            height: 1.5,
          ),
        ),
      ],
    ),
  );
}
