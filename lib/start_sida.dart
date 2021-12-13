import 'package:flutter/material.dart';
import './album_view.dart';
import 'album_lista.dart';
import 'avancerad_sokning.dart';
import 'mina_reviews.dart';

class StartSida extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("GLITTER"), actions: [
          PopupMenuButton(
            onSelected: null,
            itemBuilder: (context) => [
              // ignore: prefer_const_constructors
              PopupMenuItem(child: Text('top betyg')),
              PopupMenuItem(child: Text('top antal recensioner')),
            ],
          ),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AvanceradSokning()),
                );
              }),
        ]),
        body: ListView(children: [
          filterbar(),
          albumRow(context,
              albumTitel: 'Tänd ett Ljus', artist: 'AcDc', albumBetyg: '5/5'),
          albumRow(
            context,
            albumTitel: 'S/M',
            artist: 'The Weekend',
            albumBetyg: '2.7/5',
          ),
          albumRow(context,
              albumTitel: 'Last Chrismas',
              artist: 'Wham!',
              albumBetyg: '3.4/5'),
          albumRow(context,
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(context,
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(context,
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(context,
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(context,
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(context,
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(context,
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
          albumRow(context,
              albumTitel: 'Easy On Me', artist: 'Adele', albumBetyg: '4/5'),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.purple,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_back_ios_new),
              label: 'Back',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list, color: Colors.red),
              label: 'My review',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.list),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlbumView()),
              );
            }));
  }
}
