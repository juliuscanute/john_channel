import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Static List View',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Academic disciplines'),
        ),
        body: ListView(
          children: [
            _buildListItem(context, 'English', 'English'),
            _buildListItem(context, 'Maths', 'Maths'),
            _buildListItem(context, 'Science', 'Science'),
            _buildListItem(context, 'Social Science', 'SocialScience'),
            _buildListItem(context, 'அறிவியல்', 'அறிவியல்'),
            _buildListItem(context, 'கணக்கு', 'கணக்கு'),
            _buildListItem(context, 'சமூக அறிவியல்', 'சமூகஅறிவியல்'),
            _buildListItem(context, 'தமிழ்', 'தமிழ்'),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, String name, String keyword) {
    return ListTile(
      title: Text(name),
      onTap: () => Navigator.pushNamed(
        context,
        '/filtered-playlist',
        arguments: {'keyword': keyword},
      ),
    );
  }
}
