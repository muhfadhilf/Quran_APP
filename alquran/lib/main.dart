import 'package:alquran/providers/ayat_provider.dart';
import 'package:alquran/providers/surah_provider.dart';
import 'package:alquran/routes/app_route.dart';
import 'package:alquran/screen/prayer_times/prayer_time_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SurahProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AyatProvider(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Quran App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: goRouter,
      ),
    );
  }
}
