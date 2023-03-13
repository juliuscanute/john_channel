import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class YoutubePlayerWidget extends StatelessWidget {
  final String videoId;

  const YoutubePlayerWidget({Key? key, required this.videoId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uri = Uri.parse('https://www.youtube.com/embed/$videoId');
    final request = URLRequest(url: uri);
    return Dialog(
      child: SizedBox(
        height: 400,
        child: InAppWebView(
          initialUrlRequest: request,
          initialOptions: InAppWebViewGroupOptions(
            crossPlatform: InAppWebViewOptions(
              mediaPlaybackRequiresUserGesture: false,
            ),
          ),
        ),
      ),
    );
  }
}
