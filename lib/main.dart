import 'package:flutter/material.dart';
import 'package:john_channel/ui/category_list.dart';
import 'package:john_channel/ui/play_list.dart';
import 'package:john_channel/ui/search_list.dart';
import 'package:john_channel/ui/youtube_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'John Louis 3D Learning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CategoryList(),
        '/filtered-playlist': (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return SearchVideosList(keyword: args['keyword']);
        },
        '/selected-playlist': (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return PlayList(playlistId: args['playlistId']);
        },
        '/view-video': (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return YoutubePlayerWidget(videoId: args['videoId']);
        }
      },
    );
  }
}
