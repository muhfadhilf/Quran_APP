import 'package:alquran/constants/color_palette.dart';
import 'package:alquran/providers/surah_provider.dart';
import 'package:alquran/routes/app_route.dart';
import 'package:alquran/screen/home/widgets/surah_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<SurahProvider>().getSurahs();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final surahProvider = Provider.of<SurahProvider>(context);
    final data = surahProvider.surahs;

    if (data == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quran App',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: ColorPalette.purple3,
          ),
        ),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Home',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: ColorPalette.Purple5,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Bookmarks',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: ColorPalette.Purple5,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Prayer Times',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: ColorPalette.Purple5,
                  ),
                ),
                onTap: () {
                  context.goNamed(AppRoute.prayerTime);
                },
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: width,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Assalamualaikum',
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'FADHIL',
                  style: GoogleFonts.poppins(
                    color: ColorPalette.Purple5,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Container(
                      width: width,
                      height: 180,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            ColorPalette.Purple6,
                            ColorPalette.purple1,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    Positioned(
                      bottom: -50,
                      right: -80,
                      child: Image.asset('assets/images/logo_quran.png'),
                    ),
                    Positioned(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Last Read',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 60),
                            Text(
                              'Al-Fatihah',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'The First Ayat',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ...data
                    .map((e) => SurahItem(
                          title: e.name.transliteration.en,
                          subtitle:
                              '${e.revelation.en} ${e.numberOfVerses} VERSES',
                          number: e.number,
                          arabic: e.name.short,
                        ))
                    .toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
