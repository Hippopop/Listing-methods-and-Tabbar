import 'package:flutter/material.dart';
import 'dart:math';
var rng = new Random();
int range = rng.nextInt(5000);
int identity() {
  return (rng.nextInt(5000));

}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  final List autoList = List.generate(100, (index) => {
    "position": index+1, "text": "This is a text"

    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: autoList.length,
          itemBuilder: (BuildContext context, index) => Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),

              ),
              child: ListTile(
                tileColor: Color(0xfff161840),
                title: Text("Secret Agent - "+(identity()+autoList[index]["position"]).toString(), style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w700,
                ),),
                subtitle: Text("Contact - +0987 250 "+(999+identity()).toString(), style: TextStyle(
                  color: Colors.white54,
                ),),
                leading: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      child: CircleAvatar(
                        child: Text("00"+autoList[index]["position"].toString(), style: TextStyle(
color: Colors.black,
                        ),),
                        backgroundColor: Colors.white,
                      ),
                    ),


                    Positioned(
                        top: -10,
                        child:


                        Icon(Icons.star,
                          color: Colors.white,

                        ))
                  ],
                ),
                trailing: Icon(Icons.assistant_outlined,
                color: Colors.white,),
              ),
            ),
          )
    );
  }
}
