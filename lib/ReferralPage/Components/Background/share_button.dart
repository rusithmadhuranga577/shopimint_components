import 'package:flutter/material.dart';

class ShareButton extends StatefulWidget {
  const ShareButton({super.key});

  @override
  State<ShareButton> createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
  @override
  Widget build(BuildContext context) {

      return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.purple,
      ),
      onPressed: () {},
      child: const Text('Test'),
    );

    // return ElevatedButton(
    //   onPressed: () { },
    //   style: ButtonStyle(
    //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    //       RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(80.0),
    //       )
    //     )
    //   ),
      
    //   child: Ink(
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(80),
    //       gradient: const LinearGradient(
    //         colors: [
    //           Color.fromARGB(255, 169, 17, 230),
    //           Color.fromARGB(255, 224, 76, 250),
    //         ],
    //         begin: Alignment.topLeft,
    //         end: Alignment.bottomRight,
    //       ),
    //     ),

    //     child: Container(
    //       width: 100,
    //       constraints: const BoxConstraints(
    //         // minWidth: 88.0, 
    //         minHeight: 36.0,
    //         maxWidth: double.infinity
    //       ), 
    //       alignment: Alignment.center,
          
    //       child: const Text(
    //         'Share Link',
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //   ),
    // );
  }
}