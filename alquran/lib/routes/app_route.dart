import 'package:alquran/screen/home/home_screen.dart';
import 'package:alquran/screen/prayer_times/prayer_time_Screen.dart';
import 'package:alquran/screen/splash/splash_screen.dart';
import 'package:alquran/screen/surah_detail/surah_detail_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static String splash = 'splash';
  static String home = 'home';
  static String detail = 'detail';
  static String bookmark = 'bookmark';
  static String prayerTime = 'prayerTime';
}

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.splash,
      builder: (context, state) => const SplashScreen(),
      routes: [
        GoRoute(
          path: 'home',
          name: AppRoute.home,
          builder: (context, state) => const HomeScreen(),
          routes: [
            GoRoute(
              path: 'detail',
              name: AppRoute.detail,
              builder: (context, state) => const SurahDetailScreen(),
            ),
            GoRoute(
              path: 'prayertime',
              name: AppRoute.prayerTime,
              builder: (context, state) => const PrayerTimeScreen(),
            ),
            // GoRoute(
            //   path: 'bookmark',
            //   name: AppRoute.bookmark,
            // ),
          ],
        ),
      ],
    ),
  ],
);
