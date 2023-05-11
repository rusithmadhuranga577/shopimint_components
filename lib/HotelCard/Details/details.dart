import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:    const [
          SizedBox(
            width: double.infinity,
            height: 30,
            child: Text('Hotel Name',
              maxLines: 1,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(
            width: double.infinity,
            child: Text('Location',
              maxLines: 1,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color.fromARGB(255, 51, 50, 50),
                fontSize: 18,
              ),
            ),
          ),

          SizedBox(
            width: double.infinity,
            child: Text('Details',
              maxLines: 1,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}