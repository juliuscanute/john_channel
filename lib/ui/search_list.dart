import 'package:flutter/material.dart';
import 'package:john_channel/data/api_service.dart';
import 'package:john_channel/data/searchlist.dart';
import 'package:john_channel/ui/youtube_player.dart';

class SearchVideosList extends StatefulWidget {
  final String keyword;

  const SearchVideosList({
    required this.keyword,
    Key? key,
  }) : super(key: key);

  @override
  _SearchVideosListState createState() => _SearchVideosListState();
}

class _SearchVideosListState extends State<SearchVideosList> {
  late Future<SearchList> _playlistFuture;

  @override
  void initState() {
    super.initState();
    _playlistFuture = ApiService.fetchPlaylistByKeyword(widget.keyword);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playlist'),
      ),
      body: Center(
        child: FutureBuilder<SearchList>(
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
                        if (video.id.playlistId != null) {
                          Navigator.pushNamed(
                            context,
                            '/selected-playlist',
                            arguments: {'playlistId': video.id.playlistId},
                          );
                        } else if (video.id.videoId != null) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return YoutubePlayerWidget(
                                    videoId: video.id.videoId ?? "");
                              });
                          // Navigator.pushNamed(
                          //   context,
                          //   '/view-video',
                          //   arguments: {'videoId': video.id.videoId},
                          // );
                        }
                      });
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
