// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class VerseModel {
  VerseTextModel text;
  VersesAudioModel audio;
  VersesNumberModel number;
  VersesTranslationModel translation;

  VerseModel({
    required this.text,
    required this.audio,
    required this.number,
    required this.translation,
  });

  VerseModel copyWith({
    VerseTextModel? text,
    VersesAudioModel? audio,
    VersesNumberModel? number,
    VersesTranslationModel? translation,
  }) {
    return VerseModel(
      text: text ?? this.text,
      audio: audio ?? this.audio,
      number: number ?? this.number,
      translation: translation ?? this.translation,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text.toMap(),
      'audio': audio.toMap(),
      'number': number.toMap(),
      'translation': translation.toMap(),
    };
  }

  factory VerseModel.fromMap(Map<String, dynamic> map) {
    return VerseModel(
      text: VerseTextModel.fromMap(map['text'] as Map<String, dynamic>),
      audio: VersesAudioModel.fromMap(map['audio'] as Map<String, dynamic>),
      number: VersesNumberModel.fromMap(map['number'] as Map<String, dynamic>),
      translation: VersesTranslationModel.fromMap(
          map['translation'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory VerseModel.fromJson(String source) =>
      VerseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'VerseModel(text: $text, audio: $audio, number: $number, translation: $translation)';
  }

  @override
  bool operator ==(covariant VerseModel other) {
    if (identical(this, other)) return true;

    return other.text == text &&
        other.audio == audio &&
        other.number == number &&
        other.translation == translation;
  }

  @override
  int get hashCode {
    return text.hashCode ^
        audio.hashCode ^
        number.hashCode ^
        translation.hashCode;
  }
}

class VerseTextModel {
  String arab;

  VerseTextModel({
    required this.arab,
  });

  VerseTextModel copyWith({
    String? arab,
  }) {
    return VerseTextModel(
      arab: arab ?? this.arab,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arab': arab,
    };
  }

  factory VerseTextModel.fromMap(Map<String, dynamic> map) {
    return VerseTextModel(
      arab: map['arab'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VerseTextModel.fromJson(String source) =>
      VerseTextModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'VerseTextModel(arab: $arab)';

  @override
  bool operator ==(covariant VerseTextModel other) {
    if (identical(this, other)) return true;

    return other.arab == arab;
  }

  @override
  int get hashCode => arab.hashCode;
}

class VersesAudioModel {
  String primary;

  VersesAudioModel({
    required this.primary,
  });

  VersesAudioModel copyWith({
    String? primary,
  }) {
    return VersesAudioModel(
      primary: primary ?? this.primary,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primary': primary,
    };
  }

  factory VersesAudioModel.fromMap(Map<String, dynamic> map) {
    return VersesAudioModel(
      primary: map['primary'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VersesAudioModel.fromJson(String source) =>
      VersesAudioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'VersesAudioModel(primary: $primary)';

  @override
  bool operator ==(covariant VersesAudioModel other) {
    if (identical(this, other)) return true;

    return other.primary == primary;
  }

  @override
  int get hashCode => primary.hashCode;
}

class VersesTranslationModel {
  String id;
  String en;

  VersesTranslationModel({
    required this.id,
    required this.en,
  });

  VersesTranslationModel copyWith({
    String? id,
    String? en,
  }) {
    return VersesTranslationModel(
      id: id ?? this.id,
      en: en ?? this.en,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'en': en,
    };
  }

  factory VersesTranslationModel.fromMap(Map<String, dynamic> map) {
    return VersesTranslationModel(
      id: map['id'] as String,
      en: map['en'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VersesTranslationModel.fromJson(String source) =>
      VersesTranslationModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'VersesTranslationModel(id: $id, en: $en)';

  @override
  bool operator ==(covariant VersesTranslationModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.en == en;
  }

  @override
  int get hashCode => id.hashCode ^ en.hashCode;
}

class VersesNumberModel {
  int inSurah;
  int inQuran;

  VersesNumberModel({
    required this.inSurah,
    required this.inQuran,
  });

  VersesNumberModel copyWith({
    int? inSurah,
    int? inQuran,
  }) {
    return VersesNumberModel(
      inSurah: inSurah ?? this.inSurah,
      inQuran: inQuran ?? this.inQuran,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inSurah': inSurah,
      'inQuran': inQuran,
    };
  }

  factory VersesNumberModel.fromMap(Map<String, dynamic> map) {
    return VersesNumberModel(
      inSurah: map['inSurah'] as int,
      inQuran: map['inQuran'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory VersesNumberModel.fromJson(String source) =>
      VersesNumberModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'VersesNumberModel(inSurah: $inSurah, inQuran: $inQuran)';

  @override
  bool operator ==(covariant VersesNumberModel other) {
    if (identical(this, other)) return true;

    return other.inSurah == inSurah && other.inQuran == inQuran;
  }

  @override
  int get hashCode => inSurah.hashCode ^ inQuran.hashCode;
}
