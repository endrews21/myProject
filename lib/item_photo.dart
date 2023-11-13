import 'package:flutter/material.dart';

class ItemPhoto extends StatelessWidget {
  final String image;
  final String tag;

  const ItemPhoto({super.key, required this.image, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: tag,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.transparent,
                Colors.black,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
              )),
          ),
          Positioned(bottom: 50,
              left: 0,
              right: 0,
              child: Text(image,
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }
}
