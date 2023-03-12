import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.lightBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          shape:
              const Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
          leading: Builder(builder: (context) {
            return IconButton(
              icon: const Icon(
                FontAwesomeIcons.circleUser,
                color: Colors.blueAccent,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          }),
          backgroundColor: Colors.black,
          title: const Icon(
            FontAwesomeIcons.twitter,
            size: 30,
            color: Colors.blue,
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                accountEmail: Text(
                  '@username12345',
                  style: TextStyle(color: Colors.white),
                ),
                accountName: Text(
                  'First Last',
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture: Icon(
                  Icons.person_2_outlined,
                  color: Colors.white,
                ),
              ),
              DrawerCards(
                title: 'Profile',
                icon: Icon(
                  FontAwesomeIcons.user,
                  color: Colors.white,
                ),
              ),
              DrawerCards(
                title: 'Twitter Blue',
                icon: Icon(
                  FontAwesomeIcons.squareTwitter,
                  color: Colors.blue,
                ),
              ),
              DrawerCards(
                title: 'Topics',
                icon: Icon(
                  FontAwesomeIcons.message,
                  color: Colors.white,
                ),
              ),
              DrawerCards(
                title: 'Bookmarks',
                icon: Icon(
                  FontAwesomeIcons.bookmark,
                  color: Colors.white,
                ),
              ),
              DrawerCards(
                title: 'Lists',
                icon: Icon(
                  FontAwesomeIcons.book,
                  color: Colors.white,
                ),
              ),
              DrawerCards(
                title: 'Twitter Circle',
                icon: Icon(
                  FontAwesomeIcons.userAstronaut,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text(
            'Hello',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class DrawerCards extends StatelessWidget {
  const DrawerCards({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
