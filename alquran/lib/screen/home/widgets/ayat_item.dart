import 'package:alquran/constants/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AyatItem extends StatelessWidget {
  const AyatItem({
    super.key,
    required this.number,
    required this.translation,
    required this.arabic,
  });

  final int number;
  final String translation;
  final String arabic;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              const SizedBox(width: 10),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: ColorPalette.purple2,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text(
                    number.toString(),
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow_outlined,
                  color: ColorPalette.purple3,
                  size: 36,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_border,
                  color: ColorPalette.purple3,
                  size: 36,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              arabic,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: ColorPalette.Purple5,
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ),
        Container(
          width: width,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            translation,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: ColorPalette.Purple5,
            ),
          ),
        )
      ],
    );
  }
}
