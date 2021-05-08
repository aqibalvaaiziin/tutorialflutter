import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Belajar Flutter"),
        ),

        // Container

        // body: Center(
        //   child: Container(
        //     width: 50,
        //     height: 50,
        //     decoration: BoxDecoration(
        //       color: Colors.red,
        //       borderRadius: BorderRadius.circular(3),
        //     ),
        //   ),
        // ),

        // Container(tutup)

        // ====================================================

        // Column

        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Text(
        //         "Aqib",
        //         style: TextStyle(
        //           fontSize: 17,
        //         ),
        //       ),
        //       Text(
        //         "Dimas",
        //         style: TextStyle(
        //           fontSize: 17,
        //         ),
        //       ),
        //       Text(
        //         "Sukri",
        //         style: TextStyle(
        //           fontSize: 17,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),

        // Column(tutup)
        // ====================================================

        // ====================================================
        //Row

        // body: Center(
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       Text(
        //         "Aqib",
        //         style: TextStyle(
        //           fontSize: 17,
        //         ),
        //       ),
        //       Text(
        //         "Dimas",
        //         style: TextStyle(
        //           fontSize: 17,
        //         ),
        //       ),
        //       Text(
        //         "Sukri",
        //         style: TextStyle(
        //           fontSize: 17,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),

        //Row(tutup)
        // ====================================================

        // ====================================================
        // Stack

        // body: Center(
        //   child: Stack(
        //     alignment: Alignment.center,
        //     children: [
        //       Container(
        //         width: 50,
        //         height: 50,
        //         color: Colors.red,
        //       ),
        //       Container(
        //         width: 30,
        //         height: 30,
        //         color: Colors.black,
        //       ),
        //     ],
        //   ),
        // ),

        // Stack (tutup)
        // ====================================================

        // ====================================================
        // ListView

        body: ListView.builder(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          itemCount: 99,
          itemBuilder: (context, index) {
            return Text(index.toString());
          },
        ),

        // ListView (tutup)
        // ====================================================
      ),
    );
  }
}
