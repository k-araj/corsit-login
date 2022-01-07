import 'package:flutter/material.dart';

void main() => runApp(const MyApp1());

class MyApp1 extends StatelessWidget { const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      theme: ThemeData(
        primaryColor: const Color(0xFF6200EE),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Header',
                style: textTheme.headline6,
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Item 1'),
              selected: _selectedDestination == 0,
              onTap: () => selectDestination(0),
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Item 2'),
              selected: _selectedDestination == 1,
              onTap: () => selectDestination(1),
            ),
            ListTile(
              leading: const Icon(Icons.label),
              title: const Text('Item 3'),
              selected: _selectedDestination == 2,
              onTap: () => selectDestination(2),
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Label',
              ),
            ),
            ListTile(
              leading: const Icon(Icons.bookmark),
              title: const Text('Item A'),
              selected: _selectedDestination == 3,
              onTap: () => selectDestination(3),
            ),
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        padding: const EdgeInsets.all(20),
        childAspectRatio: 3 / 2,
        children: [
          Image.asset('assets/nav-drawer-1.jpg'),
          Image.asset('assets/nav-drawer-2.jpg'),
          Image.asset('assets/nav-drawer-3.jpg'),
          Image.asset('assets/nav-drawer-4.jpg'),
        ],
      ),
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}