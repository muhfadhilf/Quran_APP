import 'dart:developer';
import 'package:alquran/data/quran_repository.dart';
import 'package:alquran/models/surah_model.dart';
import 'package:flutter/material.dart';

class SurahProvider extends ChangeNotifier {
  List<SurahModel>? _surahs;
  List<SurahModel>? get surahs => _surahs;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool _initialized = false;
  bool get initialized => _initialized;

  Future getSurahs() async {
    _isLoading = true;
    // notifyListeners();
    try {
      final result = await QuranRepository().listSurah();
      _surahs = result
          .map(
            (item) => SurahModel.fromMap(item),
          )
          .toList();
      _isLoading = false;
      _initialized = true;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      // notifyListeners();
      log(e.toString());
    }
  }
}
