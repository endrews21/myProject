import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_photo.dart';

class MyPhotos extends StatelessWidget {
  final List<String> images = [
    'assets/images/pexels-eberhard-grossgasteiger-443446.jpg',
    'assets/images/pexels-eberhard-grossgasteiger-1366919.jpg',
    'assets/images/pexels-eberhard-grossgasteiger-1624496.jpg',
    'assets/images/pexels-giorgio-de-angelis-1413412.jpg',
    'assets/images/pexels-pixabay-36717.jpg',
    'assets/images/pexels-sohail-nachiti-807598.jpg',
    'assets/images/pexels-veeterzy-39811.jpg',
  ];
   MyPhotos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('My Photos'),
      ),
      body: GridView.builder(
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount (
            crossAxisCount: 3,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
        ),
          itemBuilder: (context, index) {
          final imageTag = 'imageTag${images[index]}';


            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ItemPhoto(image: images[index],
                  tag: imageTag,
                  ),
                ),
                );
              },
                child: Hero(
                  tag: imageTag,
                child: Image.asset(images[index], fit: BoxFit.cover,),),);
          },
      ),
    );
  }
}
