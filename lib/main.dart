import 'package:flutter/material.dart';
import 'package:last_fm/presentation/pages/albums_page/albums_page.dart';
import 'package:provider/provider.dart';

import 'data/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // To add an enviroment union all I would have to do is use a MultiProvider
    // and create the union. I usually do this with staging, production and testing
    // and the union then holds the url paths for their respective endpoints and
    // testing trows an exception because it needs to be handled separately.
    return Provider(
      create: (_) => Data(),
      builder: (_, __) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: AlbumsPage.route(),
      ),
    );
  }
}
