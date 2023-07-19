import 'package:flutter/material.dart';

import '../settings/settings_view.dart';
import '../word_pair.dart';
import 'word_pair_line.dart';

class WordPairListView extends StatelessWidget {
  WordPairListView({super.key});

  static const routeName = '/';
  final List<WordPair> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Items'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: Column(
        children: const [
          Padding(padding: EdgeInsets.symmetric(vertical: 12.0)),
          WordPairLine(),
          Padding(padding: EdgeInsets.symmetric(vertical: 12.0)),
          WordPairLine(),
          Padding(padding: EdgeInsets.symmetric(vertical: 12.0)),
          WordPairLine(),
        ],
      ),
    );
  }
}
