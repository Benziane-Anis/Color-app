import 'package:color_app/color.dart';
import 'package:color_app/compenment.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        backgroundColor: Colors.transparent,
        elevation: 20,
        //leading: Image.network('https://media.gq-magazine.co.uk/photos/5e8352568714920008e10d5b/4:3/w_1440,h_1080,c_limit/20200331-coffee-05.jpg'),
        title: Center(
          child: Container(
            padding: EdgeInsets.only(top: 7,right: 60,left:60,bottom: 7 ),
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.9),
                    Colors.white.withOpacity(.2)
                    ]
                )
              ),
              child: const Text("Colors",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
              )
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin:Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.white12.withOpacity(.5)
                  ]),
            ),

        child: GridView.count(crossAxisCount: 2,
            children: ColorsList.map((coloritem) => InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder:(context) => ColorS(coloritem),));

              },
              child: Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: coloritem,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(7,7),
                      blurRadius: 3,
                    )
                  ]
                ),
                //color: coloritem,
              ),
            )
            ).toList(),
        ),
      )),
    );
  }
}
