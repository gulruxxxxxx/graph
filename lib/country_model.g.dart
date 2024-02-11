// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      country: json['country'] == null
          ? null
          : CountryClass.fromJson(json['country'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'country': instance.country,
    };

CountryClass _$CountryClassFromJson(Map<String, dynamic> json) => CountryClass(
      name: json['name'] as String?,
      native: json['native'] as String?,
      capital: json['capital'] as String?,
      emoji: json['emoji'] as String?,
      currency: json['currency'] as String?,
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CountryClassToJson(CountryClass instance) =>
    <String, dynamic>{
      'name': instance.name,
      'native': instance.native,
      'capital': instance.capital,
      'emoji': instance.emoji,
      'currency': instance.currency,
      'languages': instance.languages,
    };

Language _$LanguageFromJson(Map<String, dynamic> json) => Language(
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };
