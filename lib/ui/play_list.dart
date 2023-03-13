import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:john_channel/data/api_service.dart';
import 'package:john_channel/data/playlist.dart';
import 'package:john_channel/data/searchlist.dart';
import 'package:john_channel/ui/youtube_player.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

class PlayList extends StatefulWidget {
  final String playlistId;

  const PlayList({
    required this.playlistId,
    Key? key,
  }) : super(key: key);

  @override
  _PlayListState createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  late Future<Playlist> _playlistFuture;

  @override
  void initState() {
    super.initState();
    _playlistFuture = ApiService.fetchVideoByPlaylist(widget.playlistId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Videos List'),
      ),
      body: Center(
        child: FutureBuilder<Playlist>(
          future: _playlistFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final playlist = snapshot.data!;
              // Build your UI to display the videos in the playlist
              return ListView.builder(
                itemCount: playlist.items.length,
                itemBuilder: (context, index) {
                  final video = playlist.items[index];
                  return ListTile(
                    leading: Image.network(
                      video.snippet.thumbnails.high.url,
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                        return Container(
                          width: 80,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        );
                      },
                    ),
                    title: Text(video.snippet.title),
                    subtitle: Text(video.snippet.channelTitle),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return YoutubePlayerWidget(
                                videoId:
                                    video.snippet.resourceId?.videoId ?? "");
                          });
                      // Navigator.pushNamed(
                      //   context,
                      //   '/view-video',
                      //   arguments: {
                      //     'videoId': video.snippet.resourceId?.videoId ?? ''
                      //   },
                      // );
                    },
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('Failed to load playlist: ${snapshot.error}');
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
