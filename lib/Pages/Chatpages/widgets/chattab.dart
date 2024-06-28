import 'package:flutter/material.dart';
import 'chatbubble.dart';

class MyChatTab extends StatefulWidget {
  const MyChatTab({super.key, required this.chats});
  final List<String> chats;

  @override
  State<MyChatTab> createState() => _MyChatTabState();
}

class _MyChatTabState extends State<MyChatTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: ListView.builder(
        itemCount: widget.chats.length,
        itemBuilder: (context, index) {
          return MyChatBubble(
            chat: widget.chats[index],
            isDoctor: index % 2 == 1,
          );
        },
      ),
    );
  }
}
