import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HabitrLogo extends StatelessWidget {
  const HabitrLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(
        'Habitr',
        style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
