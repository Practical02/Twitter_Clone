import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Twitter',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          primarySwatch: Colors.lightBlue,
        ),
        debugShowCheckedModeBanner: false,
        home: const MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var index = 0;
  Widget page = const MyRealHomePage();
  void pageChange() {
    switch (index) {
      case 0:
        page = const MyRealHomePage();
        break;
      case 1:
        page = const ProfilePage();
        break;
      case 2:
        page = const TwitterBluePage();
        break;
      case 3:
        page = const TopicsPage();
        break;
    }
    notifyListeners();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MyAppState state;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            children: [
              const UserAccountsDrawerHeader(
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
                icon: const Icon(
                  FontAwesomeIcons.user,
                  color: Colors.white,
                ),
                index: 1,
              ),
              DrawerCards(
                title: 'Twitter Blue',
                icon: const Icon(
                  FontAwesomeIcons.squareTwitter,
                  color: Colors.blue,
                ),
                index: 2,
              ),
              DrawerCards(
                title: 'Topics',
                icon: const Icon(
                  FontAwesomeIcons.message,
                  color: Colors.white,
                ),
                index: 3,
              ),
              DrawerCards(
                title: 'Bookmarks',
                icon: const Icon(
                  FontAwesomeIcons.bookmark,
                  color: Colors.white,
                ),
                index: 4,
              ),
              DrawerCards(
                title: 'Lists',
                icon: const Icon(
                  FontAwesomeIcons.book,
                  color: Colors.white,
                ),
                index: 5,
              ),
              DrawerCards(
                title: 'Twitter Circle',
                icon: const Icon(
                  FontAwesomeIcons.userAstronaut,
                  color: Colors.white,
                ),
                index: 6,
              ),
            ],
          ),
        ),
        body: state.page);
  }
}

class MyRealHomePage extends StatefulWidget {
  const MyRealHomePage({super.key});

  @override
  State<MyRealHomePage> createState() => _MyRealHomePageState();
}

class _MyRealHomePageState extends State<MyRealHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          'Hello',
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}

class DrawerCards extends StatelessWidget {
  DrawerCards({
    super.key,
    required this.title,
    required this.icon,
    required this.index,
  });

  final String title;
  final Icon icon;
  final int index;

  MyAppState? st;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      onTap: () {
        Navigator.pop(context);
        st?.pageChange();
      },
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          'Profile Page',
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}

class TwitterBluePage extends StatefulWidget {
  const TwitterBluePage({super.key});

  @override
  State<TwitterBluePage> createState() => _TwitterBluePageState();
}

class _TwitterBluePageState extends State<TwitterBluePage> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          'Twitter Blue Page',
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}

class TopicsPage extends StatefulWidget {
  const TopicsPage({super.key});

  @override
  State<TopicsPage> createState() => _TopicsPageState();
}

class _TopicsPageState extends State<TopicsPage> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          'Topics Page',
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
