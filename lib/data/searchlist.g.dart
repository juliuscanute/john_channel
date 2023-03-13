// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchList _$SearchListFromJson(Map<String, dynamic> json) => SearchList(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      pageInfo:
          SearchPageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => SearchItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchListToJson(SearchList instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'pageInfo': instance.pageInfo,
      'items': instance.items,
    };

SearchPageInfo _$SearchPageInfoFromJson(Map<String, dynamic> json) =>
    SearchPageInfo(
      totalResults: json['totalResults'] as int,
      resultsPerPage: json['resultsPerPage'] as int,
    );

Map<String, dynamic> _$SearchPageInfoToJson(SearchPageInfo instance) =>
    <String, dynamic>{
      'totalResults': instance.totalResults,
      'resultsPerPage': instance.resultsPerPage,
    };

SearchItem _$SearchItemFromJson(Map<String, dynamic> json) => SearchItem(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      snippet: SearchSnippet.fromJson(json['snippet'] as Map<String, dynamic>),
      id: SearchItemId.fromJson(json['id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchItemToJson(SearchItem instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'snippet': instance.snippet,
      'id': instance.id,
    };

SearchItemId _$SearchItemIdFromJson(Map<String, dynamic> json) => SearchItemId(
      kind: json['kind'] as String,
      playlistId: json['playlistId'] as String?,
      videoId: json['videoId'] as String?,
    );

Map<String, dynamic> _$SearchItemIdToJson(SearchItemId instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'playlistId': instance.playlistId,
      'videoId': instance.videoId,
    };

SearchSnippet _$SearchSnippetFromJson(Map<String, dynamic> json) =>
    SearchSnippet(
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      channelId: json['channelId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnails:
          SearchThumbnails.fromJson(json['thumbnails'] as Map<String, dynamic>),
      channelTitle: json['channelTitle'] as String,
      playlistId: json['playlistId'] as String?,
      position: json['position'] as int?,
      resourceId: json['resourceId'] == null
          ? null
          : SerachResourceId.fromJson(
              json['resourceId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchSnippetToJson(SearchSnippet instance) =>
    <String, dynamic>{
      'publishedAt': instance.publishedAt.toIso8601String(),
      'channelId': instance.channelId,
      'title': instance.title,
      'description': instance.description,
      'thumbnails': instance.thumbnails,
      'channelTitle': instance.channelTitle,
      'playlistId': instance.playlistId,
      'position': instance.position,
      'resourceId': instance.resourceId,
    };

SearchThumbnails _$SearchThumbnailsFromJson(Map<String, dynamic> json) =>
    SearchThumbnails(
      defaultThumbnail: json['defaultThumbnail'] == null
          ? null
          : SearchThumbnail.fromJson(
              json['defaultThumbnail'] as Map<String, dynamic>),
      medium: SearchThumbnail.fromJson(json['medium'] as Map<String, dynamic>),
      high: SearchThumbnail.fromJson(json['high'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchThumbnailsToJson(SearchThumbnails instance) =>
    <String, dynamic>{
      'defaultThumbnail': instance.defaultThumbnail,
      'medium': instance.medium,
      'high': instance.high,
    };

SearchThumbnail _$SearchThumbnailFromJson(Map<String, dynamic> json) =>
    SearchThumbnail(
      url: json['url'] as String,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$SearchThumbnailToJson(SearchThumbnail instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };

SerachResourceId _$SerachResourceIdFromJson(Map<String, dynamic> json) =>
    SerachResourceId(
      kind: json['kind'] as String,
      videoId: json['videoId'] as String,
    );

Map<String, dynamic> _$SerachResourceIdToJson(SerachResourceId instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'videoId': instance.videoId,
    };
