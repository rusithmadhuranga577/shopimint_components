import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SharedLink extends StatefulWidget {
  const SharedLink({super.key});

  @override
  State<SharedLink> createState() => _SharedLinkState();
}

class _SharedLinkState extends State<SharedLink> {
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(10),
      dashPattern: const [6, 6],
      color: Colors.white38,
      strokeWidth: 2,
      child: Container(
        width: 250,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              Colors.purple.withOpacity(0.5),
              Colors.purpleAccent.withOpacity(0.5),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Colors.white38,
                    width: 1.0,
                  ),
                )
              ),
              width: 200,
              height: 50,
              child: Center(
                child: SelectableText('shared link shared link shared link shared link',
                maxLines: 1,
                textAlign: TextAlign.start,
                style: GoogleFonts.inter(
                    color: Colors.white70, 
                    fontSize: 15, 
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ),

            SizedBox(
              width: 50,
              height: 50,
              child: Center(
                child: TextButton(
                  onPressed: () {
                    Clipboard.setData(const ClipboardData(text: 'shared link'));
                  },
                  child: Text('Copy Link',
                    textAlign: TextAlign.center, 
                    style: GoogleFonts.inter(
                      color: Colors.white70, 
                      fontSize: 12, 
                      fontWeight: FontWeight.w800
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
   );
  }
}