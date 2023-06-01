import 'package:flutter/material.dart';

class SampleDynamicPage extends StatelessWidget {

  final String link;
  final String id;

  const SampleDynamicPage({super.key, required this.link, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('sample\nlink:$link\nid:$id'),
      ),
    );
  }
}
