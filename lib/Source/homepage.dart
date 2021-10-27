import 'package:flutter/material.dart';
import 'package:list_view_project/Source/firstPage.dart';
import 'package:list_view_project/Source/secondPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
         backgroundColor: Color(0xfff919CD9),
        appBar: AppBar(
          backgroundColor: Colors.cyan,

          elevation: 10,
         // backgroundColor: Color(0xfffD5F2EF),
          title: Text(
            "App Presentation",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Color(0xfff161840),
            /*  indicator:
            BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,


            ),*/
            indicatorWeight: 3,
            tabs: [
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.cyan,
                  ),
                  child: Text("Hunters", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black54),),
                ),
              ),
              Tab(child: Container(
                decoration: BoxDecoration(
                  // color: Colors.cyan,
                ),
                child: Text("Agents", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color: Colors.black54),),
              ),),
            ],
          ),
        ),
        body: TabBarView(
          children: [FirstPage(), SecondPage()],
        ),
      ),
    );
  }
}
