import 'package:flutter/material.dart';
import 'package:my_first_app/Api/api_review.dart';
import 'package:my_first_app/Lists/review_list.dart';
import 'package:my_first_app/Screens/start_page.dart';
import 'package:my_first_app/States/my_state.dart';
import 'package:my_first_app/States/start_state.dart';
import 'package:provider/provider.dart';
import '../States/album_state.dart';

class AlbumInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<MyState>(context, listen: false).getAlbum();
    Provider.of<MyState>(context, listen: false).getList();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ALBUM",
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StartPage()));
              }),
        ],
      ),
      body: Consumer<MyState>(
          builder: (context, state, child) =>
              AlbumState(state.album, state.list)),
    );
  }
}
