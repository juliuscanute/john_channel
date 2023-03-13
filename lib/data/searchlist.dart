import 'package:json_annotation/json_annotation.dart';

part 'searchlist.g.dart';

@JsonSerializable()
class SearchList {
  String kind;
  String etag;
  SearchPageInfo pageInfo;
  List<SearchItem> items;

  SearchList(
      {required this.kind,
      required this.etag,
      required this.pageInfo,
      required this.items});

  factory SearchList.fromJson(Map<String, dynamic> json) =>
      _$SearchListFromJson(json);

  Map<String, dynamic> toJson() => _$SearchListToJson(this);
}

@JsonSerializable()
class SearchPageInfo {
  int totalResults;
  int resultsPerPage;

  SearchPageInfo({required this.totalResults, required this.resultsPerPage});

  factory SearchPageInfo.fromJson(Map<String, dynamic> json) =>
      _$SearchPageInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SearchPageInfoToJson(this);
}

@JsonSerializable()
class SearchItem {
  String kind;
  String etag;
  SearchSnippet snippet;
  SearchItemId id;

  SearchItem(
      {required this.kind,
      required this.etag,
      required this.snippet,
      required this.id});

  factory SearchItem.fromJson(Map<String, dynamic> json) =>
      _$SearchItemFromJson(json);

  Map<String, dynamic> toJson() => _$SearchItemToJson(this);
}

@JsonSerializable()
class SearchItemId {
  String kind;
  String? playlistId;
  String? videoId;
  SearchItemId({required this.kind, this.playlistId, this.videoId});

  factory SearchItemId.fromJson(Map<String, dynamic> json) =>
      _$SearchItemIdFromJson(json);

  Map<String, dynamic> toJson() => _$SearchItemIdToJson(this);
}

@JsonSerializable()
class SearchSnippet {
  DateTime publishedAt;
  String channelId;
  String title;
  String description;
  SearchThumbnails thumbnails;
  String channelTitle;
  String? playlistId;
  int? position;
  SerachResourceId? resourceId;

  SearchSnippet(
      {required this.publishedAt,
      required this.channelId,
      required this.title,
      required this.description,
      required this.thumbnails,
      required this.channelTitle,
      this.playlistId,
      this.position,
      this.resourceId});

  factory SearchSnippet.fromJson(Map<String, dynamic> json) =>
      _$SearchSnippetFromJson(json);

  Map<String, dynamic> toJson() => _$SearchSnippetToJson(this);
}

@JsonSerializable()
class SearchThumbnails {
  SearchThumbnail? defaultThumbnail;
  SearchThumbnail medium;
  SearchThumbnail high;

  SearchThumbnails(
      {this.defaultThumbnail, required this.medium, required this.high});

  factory SearchThumbnails.fromJson(Map<String, dynamic> json) =>
      _$SearchThumbnailsFromJson(json);

  Map<String, dynamic> toJson() => _$SearchThumbnailsToJson(this);
}

@JsonSerializable()
class SearchThumbnail {
  String url;
  int? width;
  int? height;

  SearchThumbnail({required this.url, this.width, this.height});

  factory SearchThumbnail.fromJson(Map<String, dynamic> json) =>
      _$SearchThumbnailFromJson(json);

  Map<String, dynamic> toJson() => _$SearchThumbnailToJson(this);
}

@JsonSerializable()
class SerachResourceId {
  String kind;
  String videoId;

  SerachResourceId({required this.kind, required this.videoId});

  factory SerachResourceId.fromJson(Map<String, dynamic> json) =>
      _$SerachResourceIdFromJson(json);

  Map<String, dynamic> toJson() => _$SerachResourceIdToJson(this);
}
