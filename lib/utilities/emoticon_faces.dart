import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {

  final String emoticon ;
  const EmoticonFace({super.key,  required this.emoticon});

  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    emoticon,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  ),
                );
  }
}