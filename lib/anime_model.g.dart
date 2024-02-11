// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeModel _$AnimeModelFromJson(Map<String, dynamic> json) => AnimeModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeModelToJson(AnimeModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      page: json['Page'] == null
          ? null
          : Page.fromJson(json['Page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'Page': instance.page,
    };

Page _$PageFromJson(Map<String, dynamic> json) => Page(
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PageToJson(Page instance) => <String, dynamic>{
      'media': instance.media,
    };

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      siteUrl: json['siteUrl'] as String?,
      title: json['title'] == null
          ? null
          : Title.fromJson(json['title'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'siteUrl': instance.siteUrl,
      'title': instance.title,
      'description': instance.description,
    };

Title _$TitleFromJson(Map<String, dynamic> json) => Title(
      english: json['english'] as String?,
      native: json['native'] as String?,
    );

Map<String, dynamic> _$TitleToJson(Title instance) => <String, dynamic>{
      'english': instance.english,
      'native': instance.native,
    };
