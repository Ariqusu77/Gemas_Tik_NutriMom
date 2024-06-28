import 'package:flutter/material.dart';
import 'chattab.dart';

class MyChatOption extends StatelessWidget {
  const MyChatOption({super.key, required this.chatlist});
  final Map<String, dynamic> chatlist;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyChatTab(chats: chatlist['chat']),
      ),
    );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(6),
        ),
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.person,
              size: 24,
              color: Colors.black,
            ),
            const SizedBox(width: 24,),
            Text(
              chatlist['name'],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ), 
      ),
    );
  }
}
