import 'package:flutter/material.dart';

class MyChatBubble extends StatelessWidget {
  const MyChatBubble({super.key, required this.chat, required this.isDoctor});
  final String chat;
  final bool isDoctor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isDoctor ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: isDoctor ? Colors.blue[100] : Colors.green[100],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Text(
          chat,
          style: TextStyle(
            color: isDoctor ? Colors.blue[900] : Colors.green[900],
          ),
        ),
      ),
    );
  }
}