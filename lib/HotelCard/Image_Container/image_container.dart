import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ImageContainer extends StatefulWidget {
  const ImageContainer({super.key});

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget> [
          Container(
          width: double.infinity,
          height: 150,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15)
            ),
            image: DecorationImage(
              image: AssetImage('assets/02.jpg'),
              fit: BoxFit.fill,
            )
          ),
        ),
        
        Positioned(
          top: 10,
          left: 10,
          right: 0,
          child: RatingBarIndicator(
            rating: 3.5,
            itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Color.fromARGB(255, 255, 214, 34),
            ),
            itemCount: 5,
            itemSize: 20.0,
            direction: Axis.horizontal,
          ),
        ),
      ]
    );
  }
}