import 'package:flutter/Material.dart';
import 'package:flutter/material.dart';
class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}
class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/contacts': (context) => const ContactsScreen(),
        '/favorites': (context) => const FavoritesScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}
Widget botBar(context) => BottomNavigationBar(
  items: const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Главная", ),
    BottomNavigationBarItem(icon: Icon(Icons.contacts), label: "Контакты"),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Избранное"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Настройки"),
  ],
  selectedFontSize: 18,
  selectedItemColor: Colors.red,
  selectedIconTheme: const IconThemeData(
    size: 40,
  ),
  showUnselectedLabels: true,
  unselectedItemColor: Colors.black12,
  unselectedIconTheme: const IconThemeData(
    size: 10,
  ),
);
Widget navDrawer(context) => Drawer(
  child: ListView(padding:  EdgeInsets.zero, children: [
    DrawerHeader(
        decoration: const BoxDecoration(color: Colors.blue),
        child: SizedBox(
          height: 200,
          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/220px-Google-flutter-logo.svg.png"),
        )),
    ListTile(
      leading: const Icon(Icons.home_filled),
      title: const Text('Главная'),
      onTap: () {
        Navigator.pushNamed(context, '/');
      },
    ),
    ListTile(
      leading: const Icon(Icons.contacts),
      title: const Text('Контакты'),
      onTap: () {
        Navigator.pushNamed(context, '/contacts');
      },
    ),
    ListTile(
      leading: const Icon(Icons.favorite),
      title: const Text('Избранное'),
      onTap: () {
        Navigator.pushNamed(context, '/favorites');
      },
    ),
    const Divider(height: 1,),
    ListTile(
      leading: const Icon(Icons.settings),
      title: const Text('Настройки'),
      onTap: () {
        Navigator.pushNamed(context, '/settings');
      },
    ),
  ],),
);
class MainScreen extends StatelessWidget { //MainScreen widget
  const MainScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
        const Text.rich(
          TextSpan(
            children: [
              WidgetSpan(child: Icon(Icons.home_filled)),
              TextSpan(text: ' Главная'),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {Navigator.pushNamed(context, '/settings');},
          ),
          TextButton(onPressed: () {Navigator.pop(context);}, child:
           const Text('Назад', style: TextStyle(color: Colors.white),),),
        ],
      ),
      drawer: navDrawer(context),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
          const Text('Главная страница'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Назад'),
          ),
        ],
        ),
      ),
      bottomNavigationBar: botBar(context),

    );
  }
} //MainScreen widget
class ContactsScreen extends StatelessWidget { //ContactsScreen widget
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text.rich(
        TextSpan(
          children: [
            WidgetSpan(child: Icon(Icons.contacts)),
            TextSpan(text: ' Контакты'),
          ],
        ),
      ),
        actions: [
        IconButton(
            icon: const Icon(
            Icons.settings,
            color: Colors.white,
      ),
          onPressed: () {Navigator.pushNamed(context, '/settings');},
    ),
          TextButton(onPressed: () {Navigator.pop(context);}, child:
            const Text('Назад', style: TextStyle(color: Colors.white),),),
        ],
      ),
      drawer: navDrawer(context),
      body:  Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Контакты'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Назад'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: botBar(context),
    );
  }
} //ContactsScreen widget
class FavoritesScreen extends StatelessWidget { //FavoritesScreen widget
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text.rich(
        TextSpan(
          children: [
            WidgetSpan(child: Icon(Icons.favorite)),
            TextSpan(text: ' Избранное'),
          ],
        ),
      ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {Navigator.pushNamed(context, '/settings');},
          ),
          TextButton(onPressed: () {Navigator.pop(context);}, child:
            const Text('Назад', style: TextStyle(color: Colors.white),),),
        ],
      ),
      drawer: navDrawer(context),
      body:  Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Назад'),
            ),
            const Text('Избранное'),
          ],
        ),
      ),
      bottomNavigationBar: botBar(context),
    );
  }
} //FavoritesScreen widget
class SettingsScreen extends StatelessWidget { //SettingsScreen widget
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text.rich(
        TextSpan(
          children: [
            WidgetSpan(child: Icon(Icons.settings)),
            TextSpan(text: ' Настройки'),
          ],
        ),
      ),
        actions: [
          TextButton(onPressed: () {Navigator.pop(context);}, child:
           const Text('Назад', style: TextStyle(color: Colors.white),),),
        ],
      ),
      drawer: navDrawer(context),
      body:  Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Назад'),
            ),
            const Text('Настройки'),
          ],
        ),
      ),
      bottomNavigationBar: botBar(context),
    );
  }
} //SettingsScreen widget
void main() {
  runApp(const Navigation());
}



