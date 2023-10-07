import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:alquran/constants/color_palette.dart';

class PrayerTimeScreen extends StatefulWidget {
  const PrayerTimeScreen({super.key});

  @override
  State<PrayerTimeScreen> createState() => _PrayerTimeScreenState();
}

class _PrayerTimeScreenState extends State<PrayerTimeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Prayer Times',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: ColorPalette.purple3,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 40),
                      color: ColorPalette.Purple4.withOpacity(0.5),
                      spreadRadius: -20,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: width,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            ColorPalette.Purple6,
                            ColorPalette.purple1,
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -90,
                      right: -100,
                      child: Opacity(
                        opacity: .1,
                        child: Container(
                          width: width,
                          height: 280,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/logo_quran.png'),
                              scale: 0.8,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Saturday',
                            style: GoogleFonts.poppins(
                              fontSize: 26,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'September 23, 2023',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: width / 1.5,
                            child: const Divider(
                              color: Colors.white54,
                            ),
                          ),
                          Text(
                            'Makassar (GMT+8) ',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  InkWell(
                    child: Row(
                      children: [
                        const SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '05.05',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: ColorPalette.Purple5,
                              ),
                            ),
                            Text(
                              'WITA',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 260),
                        Text(
                          'Fajr',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: ColorPalette.Purple5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 25,
                    endIndent: 25,
                  ),
                  InkWell(
                    child: Row(
                      children: [
                        const SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '06.02',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: ColorPalette.Purple5,
                              ),
                            ),
                            Text(
                              'WITA',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 220),
                        Text(
                          'Sunrise',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: ColorPalette.Purple5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 25,
                    endIndent: 25,
                  ),
                  InkWell(
                    child: Row(
                      children: [
                        const SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '12.02',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: ColorPalette.Purple5,
                              ),
                            ),
                            Text(
                              'WITA',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 240),
                        Text(
                          'Dhuhr',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: ColorPalette.Purple5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 25,
                    endIndent: 25,
                  ),
                  InkWell(
                    child: Row(
                      children: [
                        const SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '15.20',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: ColorPalette.Purple5,
                              ),
                            ),
                            Text(
                              'WITA',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 270),
                        Text(
                          'Asr',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: ColorPalette.Purple5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 25,
                    endIndent: 25,
                  ),
                  InkWell(
                    child: Row(
                      children: [
                        const SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '18.03',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: ColorPalette.Purple5,
                              ),
                            ),
                            Text(
                              'WITA',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 230),
                        Text(
                          'Sunset',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: ColorPalette.Purple5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 25,
                    endIndent: 25,
                  ),
                  InkWell(
                    child: Row(
                      children: [
                        const SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '19.00',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: ColorPalette.Purple5,
                              ),
                            ),
                            Text(
                              'WITA',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 260),
                        Text(
                          'Isha',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: ColorPalette.Purple5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
