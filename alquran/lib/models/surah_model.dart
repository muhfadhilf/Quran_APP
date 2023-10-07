// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:alquran/models/verse_model.dart';

class SurahModel {
  int number;
  int numberOfVerses;
  SurahNameModel name;
  SurahRevelationModel revelation;
  List<VerseModel>? verses;

  SurahModel({
    required this.number,
    required this.numberOfVerses,
    required this.name,
    required this.revelation,
    this.verses,
  });

  SurahModel copyWith({
    int? number,
    int? numberOfVerses,
    SurahNameModel? name,
    SurahRevelationModel? revelation,
    List<VerseModel>? verses,
  }) {
    return SurahModel(
      number: number ?? this.number,
      numberOfVerses: numberOfVerses ?? this.numberOfVerses,
      name: name ?? this.name,
      revelation: revelation ?? this.revelation,
      verses: verses ?? this.verses,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'numberOfVerses': numberOfVerses,
      'name': name.toMap(),
      'revelation': revelation.toMap(),
      'verses': verses?.map((x) => x.toMap()).toList(),
    };
  }

  factory SurahModel.fromMap(Map<String, dynamic> map) {
    return SurahModel(
      number: map['number'] as int,
      numberOfVerses: map['numberOfVerses'] as int,
      name: SurahNameModel.fromMap(map['name'] as Map<String, dynamic>),
      revelation: SurahRevelationModel.fromMap(
          map['revelation'] as Map<String, dynamic>),
      verses: map['verses'] != null
          ? List<VerseModel>.from(
              (map['verses'] as List<dynamic>).map<VerseModel?>(
                (x) => VerseModel.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SurahModel.fromJson(String source) =>
      SurahModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SurahModel(number: $number, numberOfVerses: $numberOfVerses, name: $name, revelation: $revelation, verses: $verses)';
  }

  @override
  bool operator ==(covariant SurahModel other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.number == number &&
        other.numberOfVerses == numberOfVerses &&
        other.name == name &&
        other.revelation == revelation &&
        listEquals(other.verses, verses);
  }

  @override
  int get hashCode {
    return number.hashCode ^
        numberOfVerses.hashCode ^
        name.hashCode ^
        revelation.hashCode ^
        verses.hashCode;
  }
}

class SurahNameModel {
  String short;
  SurahTransLiterationModel transliteration;
  SurahTranslationModel translation;

  SurahNameModel({
    required this.short,
    required this.transliteration,
    required this.translation,
  });

  SurahNameModel copyWith({
    String? short,
    SurahTransLiterationModel? transliteration,
    SurahTranslationModel? translation,
  }) {
    return SurahNameModel(
      short: short ?? this.short,
      transliteration: transliteration ?? this.transliteration,
      translation: translation ?? this.translation,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'short': short,
      'transliteration': transliteration.toMap(),
      'translation': translation.toMap(),
    };
  }

  factory SurahNameModel.fromMap(Map<String, dynamic> map) {
    return SurahNameModel(
      short: map['short'] as String,
      transliteration: SurahTransLiterationModel.fromMap(
          map['transliteration'] as Map<String, dynamic>),
      translation: SurahTranslationModel.fromMap(
          map['translation'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory SurahNameModel.fromJson(String source) =>
      SurahNameModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'SurahNameModel(short: $short, transliteration: $transliteration, translation: $translation)';

  @override
  bool operator ==(covariant SurahNameModel other) {
    if (identical(this, other)) return true;

    return other.short == short &&
        other.transliteration == transliteration &&
        other.translation == translation;
  }

  @override
  int get hashCode =>
      short.hashCode ^ transliteration.hashCode ^ translation.hashCode;
}

class SurahTransLiterationModel {
  String en;
  String id;

  SurahTransLiterationModel({
    required this.en,
    required this.id,
  });

  SurahTransLiterationModel copyWith({
    String? en,
    String? id,
  }) {
    return SurahTransLiterationModel(
      en: en ?? this.en,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'en': en,
      'id': id,
    };
  }

  factory SurahTransLiterationModel.fromMap(Map<String, dynamic> map) {
    return SurahTransLiterationModel(
      en: map['en'] as String,
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SurahTransLiterationModel.fromJson(String source) =>
      SurahTransLiterationModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SurahTransLiterationModel(en: $en, id: $id)';

  @override
  bool operator ==(covariant SurahTransLiterationModel other) {
    if (identical(this, other)) return true;

    return other.en == en && other.id == id;
  }

  @override
  int get hashCode => en.hashCode ^ id.hashCode;
}

class SurahTranslationModel {
  String en;
  String id;

  SurahTranslationModel({
    required this.en,
    required this.id,
  });

  SurahTranslationModel copyWith({
    String? en,
    String? id,
  }) {
    return SurahTranslationModel(
      en: en ?? this.en,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'en': en,
      'id': id,
    };
  }

  factory SurahTranslationModel.fromMap(Map<String, dynamic> map) {
    return SurahTranslationModel(
      en: map['en'] as String,
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SurahTranslationModel.fromJson(String source) =>
      SurahTranslationModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SurahTranslationModel(en: $en, id: $id)';

  @override
  bool operator ==(covariant SurahTranslationModel other) {
    if (identical(this, other)) return true;

    return other.en == en && other.id == id;
  }

  @override
  int get hashCode => en.hashCode ^ id.hashCode;
}

class SurahRevelationModel {
  String en;
  String id;
  String arab;

  SurahRevelationModel({
    required this.en,
    required this.id,
    required this.arab,
  });

  SurahRevelationModel copyWith({
    String? en,
    String? id,
    String? arab,
  }) {
    return SurahRevelationModel(
      en: en ?? this.en,
      id: id ?? this.id,
      arab: arab ?? this.arab,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'en': en,
      'id': id,
      'arab': arab,
    };
  }

  factory SurahRevelationModel.fromMap(Map<String, dynamic> map) {
    return SurahRevelationModel(
      en: map['en'] as String,
      id: map['id'] as String,
      arab: map['arab'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SurahRevelationModel.fromJson(String source) =>
      SurahRevelationModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SurahRevelationModel(en: $en, id: $id, arab: $arab)';

  @override
  bool operator ==(covariant SurahRevelationModel other) {
    if (identical(this, other)) return true;

    return other.en == en && other.id == id && other.arab == arab;
  }

  @override
  int get hashCode => en.hashCode ^ id.hashCode ^ arab.hashCode;
}
