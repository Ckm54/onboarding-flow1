import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;
  final String feeling;
  const EmoticonFace({
    Key? key,
    required this.emoticonFace,
    required this.feeling,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Text(
            emoticonFace,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          feeling,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
