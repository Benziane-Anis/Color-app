import 'dart:developer';

import 'package:flutter/material.dart';

class ColorS extends StatelessWidget {
   ColorS(this.screenColor,{Key? key}) : super(key: key);

  Color screenColor;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          height: 1000,
          width: 1000,
          color: screenColor,
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("Clic Me To Go Back",
                  style:
                  TextStyle(color:Colors.white,
                  fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                  ),

                ),
                Icon(Icons.tag_faces,
                color: Colors.white,
                  size: 30,
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
