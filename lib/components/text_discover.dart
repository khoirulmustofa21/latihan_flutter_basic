
import 'package:flutter/material.dart';

class TextDiscover extends StatelessWidget {
  const TextDiscover({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final sizeHeighMD = size.height < 2400;
    return Container(
              padding: const EdgeInsets.only(left: 10.0),
              margin: EdgeInsets.only(right: 150, top: 32.0, bottom: sizeHeighMD ? 20  : 30.0),
              child: const Text(
                'Discover the most modern furniture',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            );
  }
}