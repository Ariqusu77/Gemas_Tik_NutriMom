import 'package:flutter/material.dart';
import 'chatoption.dart';

class MyListChat extends StatefulWidget {
  const MyListChat({super.key});

  @override
  State<MyListChat> createState() => _MyListChatState();
}

class _MyListChatState extends State<MyListChat> {
  static List<Map<String, dynamic>> chatlist = [{
    'name' : 'dr. bambang',
    'chat' : [
      'hello dok',
      'hello bu, ada yang bisa dibantu ?',
      'tentang asupan gizi saya satu minggu ini',
      'terlihat bagus'
    ] 
  },
  {
    'name' : 'dr. susi',
    'chat' : [
      'hello dok',
      'hello bu, ada yang bisa dibantu ?',
      'tentang asupan gizi saya satu minggu ini',
      'terlihat bagus'
    ]
  }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 200,
      padding: const EdgeInsets.all(12),
      child: ListView.builder(
        itemCount: chatlist.length,
        itemBuilder: (BuildContext context, int index) {
          return MyChatOption(chatlist: chatlist[index]);
        },
      ),
    );
  }
}
