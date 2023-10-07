import 'package:alquran/constants/color_palette.dart';
import 'package:alquran/providers/ayat_provider.dart';
import 'package:alquran/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SurahItem extends StatelessWidget {
  const SurahItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.number,
    required this.arabic,
  });

  final String title;
  final String subtitle;
  final int number;
  final String arabic;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            context.read<AyatProvider>().getDetailSurah(number.toString());
            context.pushNamed(AppRoute.detail);
          },
          child: Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/images/vector.png'),
                  Text(
                    number.toString(),
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ColorPalette.Purple5,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ColorPalette.Purple5,
                    ),
                  ),
                  Text(
                    subtitle.toUpperCase(),
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                arabic,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: ColorPalette.Purple5,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Divider(),
      ],
    );
  }
}
