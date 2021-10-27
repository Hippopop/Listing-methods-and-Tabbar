import 'package:flutter/material.dart';
import 'package:list_view_project/Source/snippets.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        listFrame(
            "THE BOOGEY MAN",
            700,
            9.2,
            "I am Boogey Man. All i do is dance",
            "https://images.unsplash.com/photo-1601233749202-95d04d5b3c00?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
        listFrame(
            "SCIENTIST TAKLU",
            500,
            5.9,
            "Im a scientist. And that's why no hair.",
            "https://images.unsplash.com/photo-1616149477078-d36f7e9f1da9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHBvcnRyYWl0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
        listFrame(
            "BEARD BHAIA",
            1200,
            8.9,
            "See this?? ONLY beard is real. Nothing else!!",
            "https://images.unsplash.com/photo-1527082395-e939b847da0d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cG9ydHJhaXRzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
        listFrame(
            "SENTI SISTER",
            5000,
            9.5,
            "#Single, #Depression, #Sad_Life, #Lonely",
            "https://images.unsplash.com/photo-1606122017369-d782bbb78f32?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBvcnRyYWl0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
        listFrame(
            "MODEL SHAKIRA",
            4500,
            9,
            "I do my job really good. I earn. Don't cross me.",
            "https://images.unsplash.com/photo-1553544923-37efbe6ff816?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHBvcnRyYWl0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
        FriendFrame(
            "TUHIN BOSS",
            "Shobai amar attio. But ami karo kisu na.",
            "https://images.unsplash.com/photo-1572631382901-cf1a0a6087cb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBvcnRyYWl0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            500,
            3.5),
      ],
    );
  }
}
