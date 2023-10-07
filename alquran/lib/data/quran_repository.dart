import 'package:alquran/constants/endpoint.dart';
import 'package:alquran/utils/api.dart';

class QuranRepository {
  Future<List<Map<String, dynamic>>> listSurah() async {
    final res = await API().getQuran(Endpoint.surah);
    return (res.data['data'] as List)
        .map((e) => e as Map<String, dynamic>)
        .toList();
  }

  Future<Map<String, dynamic>> detailSurah(String id) async {
    final res = await API().getQuran('${Endpoint.surah}/$id');
    return res.data['data'] as Map<String, dynamic>;
  }
}
