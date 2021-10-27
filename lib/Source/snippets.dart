import 'package:flutter/material.dart';

Widget listFrame(String name, int follow, var rating, String bio, String link) {
  return Container(
    margin: EdgeInsets.all(10),
    child: Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 206,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            margin: EdgeInsets.only(bottom: 2),
            height: 100,
            width: 375,
            decoration: BoxDecoration(
                color: Color(0xfff161840),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            bio,
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.all(8),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Follow",
                                      style: TextStyle(fontSize: 10),
                                    )),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.all(8),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "ADD FRIEND",
                                      style: TextStyle(fontSize: 10),
                                    )),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.all(8),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "BLOCK",
                                      style: TextStyle(fontSize: 10),
                                    )),
                              ))
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: Container(
            margin: EdgeInsets.only(bottom: 2),
            height: 100,
            width: 375,
            decoration: BoxDecoration(
                color: Color(0xfff161840),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Follow :",
                                    style: TextStyle(
                                        color: Colors.white60,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    follow.toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              )),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                //crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Rating :",
                                    style: TextStyle(
                                        color: Colors.white60,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    rating.toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
        Positioned(
          bottom: (204 / 2) - 18,
          child: Container(
            padding: EdgeInsets.all(1.5),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Color(0xfffBF9663)),
            child: CircleAvatar(
              radius: 38,
              backgroundImage: NetworkImage(link),
            ),
          ),
        ),
      ],
    ),
  );
}

class FriendFrame extends StatelessWidget {
  // FriendFrame({Key? key}) : super(key: key);
  String _name = "Not given";
  String _bio = "Not updated";
  String _pplink = "No picture";
  int _follow = 0;
  var _rating = 0.00;

  @override
  FriendFrame(this._name, this._bio, this._pplink, this._follow, this._rating) {
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 206,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              margin: EdgeInsets.only(bottom: 2),
              height: 100,
              width: 375,
              decoration: BoxDecoration(
                  color: Color(0xfff161840),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              _bio,
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.all(8),
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Follow",
                                        style: TextStyle(fontSize: 10),
                                      )),
                                )),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.all(8),
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "ADD FRIEND",
                                        style: TextStyle(fontSize: 10),
                                      )),
                                )),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.all(8),
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "BLOCK",
                                        style: TextStyle(fontSize: 10),
                                      )),
                                ))
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              margin: EdgeInsets.only(bottom: 2),
              height: 100,
              width: 375,
              decoration: BoxDecoration(
                  color: Color(0xfff161840),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              _name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Follow :",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      _follow.toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                )),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  //crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Rating :",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      _rating.toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
          Positioned(
            bottom: (204 / 2) - 18,
            child: Container(
              padding: EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xfffBF9663)),
              child: CircleAvatar(
                radius: 38,
                backgroundImage: NetworkImage(_pplink),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
