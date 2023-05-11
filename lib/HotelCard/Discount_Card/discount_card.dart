import 'package:flutter/material.dart';

class DiscountCard extends StatefulWidget {
  const DiscountCard({super.key});

  @override
  State<DiscountCard> createState() => _DiscountCardState();
}

class _DiscountCardState extends State<DiscountCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 211, 208, 208).withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 3,
            offset: const Offset(1, 1),
          ),
        ],
      ),

      child: Column(
        children: [
          Stack(
            children: <Widget> [ 
              Container(
                width: 100,
                height: 25,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)
                  ),
                ),
              ),
              
              const SizedBox(
                width: 100,
                height: 25,
                child: Center(
                  child: Text('0.0% OFF',
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ]
          ),

          const SizedBox(
            width: 100,
            height: 35,
            child: Center(
              child: Text('LKR 0.00',
                maxLines: 1,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}