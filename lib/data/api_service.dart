import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:john_channel/data/playlist.dart';
import 'package:john_channel/data/searchlist.dart';
import 'package:john_channel/ui/play_list.dart';

class ApiService {
  static const String _baseUrl = 'https://youtube.googleapis.com/youtube/v3';
  static const String apiKey = "API-KEY";
  static const String channelId = "UC1ClUK1bIy9LGqVCwZ9YRhQ";

  static Future<SearchList> fetchPlaylist() async {
    final url = Uri.parse(
        '$_baseUrl/playlists?part=snippet&maxResults=100&channelId=$channelId&key=$apiKey');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return SearchList.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load playlist');
    }
  }

  static Future<SearchList> fetchPlaylistByKeyword(String keyword) async {
    final url = Uri.parse(
        '$_baseUrl/search?part=snippet&maxResults=100&channelId=$channelId&key=$apiKey&q=$keyword');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return SearchList.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load playlist');
    }
  }

  static Future<Playlist> fetchVideoByPlaylist(String playlistId) async {
    final url = Uri.parse(
        '$_baseUrl/playlistItems?part=snippet&maxResults=100&playlistId=$playlistId&key=$apiKey');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return Playlist.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load playlist');
    }
  }
}
