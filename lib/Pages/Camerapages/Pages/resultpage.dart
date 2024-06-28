import 'package:flutter/material.dart';
import 'dart:io';

class ImageResultPage extends StatelessWidget {
  final String imagePath;

  const ImageResultPage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Image Result'),)
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.file(File(imagePath), fit: BoxFit.fitWidth),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.white,
              child:  ListView(
                children: const [
                  Center(
                    child: Text(
                      'Nilai Gizi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Energi'),
                      Text('300 kal')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Karbohidrat'),
                      Text('31 g')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Protein'),
                      Text('6 g')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('lemak'),
                      Text('15 g')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('kolesterol'),
                      Text('50 mg')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('serat'),
                      Text('3 g')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('natrium'),
                      Text('120 mg')
                    ],
                  )
                ],
              )
            ),
          ),
        ]
      ),
    );
  }
}
