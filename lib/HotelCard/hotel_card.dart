import 'package:flutter/material.dart';
import 'Details/details.dart';
import 'Discount_Card/discount_card.dart';
import 'Image_Container/image_container.dart';

class HotelCard extends StatefulWidget {
  const HotelCard({super.key});

  @override
  State<HotelCard> createState() => _HotelCardState();
}

class _HotelCardState extends State<HotelCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10,left: 10,top: 20),
        width: 270,
        height: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 194, 192, 192).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 3,
              offset: const Offset(1, 1),
            ),
          ],
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ImageContainer(),
            
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 250,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Details(),

                  SizedBox(
                    height: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 30,
                          child: IconButton(
                            alignment: Alignment.topRight,
                            icon: const Icon(
                              Icons.favorite_border_rounded,
                            ), 
                            iconSize: 22,
                            onPressed: () {},
                          ),  
                        ),
                        
                        const DiscountCard(),
                        
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );   
  }
}