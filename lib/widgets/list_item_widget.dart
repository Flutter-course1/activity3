import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItemWidget extends StatelessWidget {
  final String text;

  const ListItemWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundColor: Color(0xFF44E4A5),
              radius: 4,
            ),
             const SizedBox(
          width: 10,
        ),
            Text(
              text,
              style: GoogleFonts.rubik(
                fontSize: 12,
                color: Colors.white,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
