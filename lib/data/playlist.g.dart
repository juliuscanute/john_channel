// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Playlist _$PlaylistFromJson(Map<String, dynamic> json) => Playlist(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      pageInfo: PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlaylistToJson(Playlist instance) => <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'pageInfo': instance.pageInfo,
      'items': instance.items,
    };

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) => PageInfo(
      totalResults: json['totalResults'] as int,
      resultsPerPage: json['resultsPerPage'] as int,
    );

Map<String, dynamic> _$PageInfoToJson(PageInfo instance) => <String, dynamic>{
      'totalResults': instance.totalResults,
      'resultsPerPage': instance.resultsPerPage,
    };

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      snippet: Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'snippet': instance.snippet,
      'id': instance.id,
    };

Snippet _$SnippetFromJson(Map<String, dynamic> json) => Snippet(
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      channelId: json['channelId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnails:
          Thumbnails.fromJson(json['thumbnails'] as Map<String, dynamic>),
      channelTitle: json['channelTitle'] as String,
      playlistId: json['playlistId'] as String?,
      position: json['position'] as int?,
      resourceId: json['resourceId'] == null
          ? null
          : ResourceId.fromJson(json['resourceId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SnippetToJson(Snippet instance) => <String, dynamic>{
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

Thumbnails _$ThumbnailsFromJson(Map<String, dynamic> json) => Thumbnails(
      defaultThumbnail: json['defaultThumbnail'] == null
          ? null
          : Thumbnail.fromJson(
              json['defaultThumbnail'] as Map<String, dynamic>),
      medium: Thumbnail.fromJson(json['medium'] as Map<String, dynamic>),
      high: Thumbnail.fromJson(json['high'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ThumbnailsToJson(Thumbnails instance) =>
    <String, dynamic>{
      'defaultThumbnail': instance.defaultThumbnail,
      'medium': instance.medium,
      'high': instance.high,
    };

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) => Thumbnail(
      url: json['url'] as String,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$ThumbnailToJson(Thumbnail instance) => <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };

ResourceId _$ResourceIdFromJson(Map<String, dynamic> json) => ResourceId(
      kind: json['kind'] as String,
      videoId: json['videoId'] as String,
    );

Map<String, dynamic> _$ResourceIdToJson(ResourceId instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'videoId': instance.videoId,
    };
