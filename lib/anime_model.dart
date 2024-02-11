import 'package:json_annotation/json_annotation.dart';
part 'anime_model.g.dart';
@JsonSerializable()
class AnimeModel {
  @JsonKey(name: "data")
  Data? data;

  AnimeModel({
    this.data,
  });

  factory AnimeModel.fromJson(Map<String, dynamic> json) => _$AnimeModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "Page")
  Page? page;

  Data({
    this.page,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Page {
  @JsonKey(name: "media")
  List<Media>? media;

  Page({
    this.media,
  });

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);

  Map<String, dynamic> toJson() => _$PageToJson(this);
}

@JsonSerializable()
class Media {
  @JsonKey(name: "siteUrl")
  String? siteUrl;
  @JsonKey(name: "title")
  Title? title;
  @JsonKey(name: "description")
  String? description;

  Media({
    this.siteUrl,
    this.title,
    this.description,
  });

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);
}

@JsonSerializable()
class Title {
  @JsonKey(name: "english")
  String? english;
  @JsonKey(name: "native")
  String? native;

  Title({
    this.english,
    this.native,
  });

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);

  Map<String, dynamic> toJson() => _$TitleToJson(this);
}