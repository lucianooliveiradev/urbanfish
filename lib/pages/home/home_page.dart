import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  static const String routeName = '/home';

  @override
  _HomePageState createState() => _HomePageState(title: title);
}

class _HomePageState extends State<HomePage> {
  _HomePageState({this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: drawWidget(),
          appBar: AppBar(
            // title: Text(title),
            actions: actionsWidget(),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: "NA CIDADE"),
                Tab(text: "CINEMAS"),
                Tab(text: "VIAGENS"),
                Tab(text: "AQUI PERTO"),
              ],
            ),
          ),
          body: TabBarView(children: [
            new Container(
              color: Colors.deepOrangeAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Cidade",
                    style: TextStyle(fontSize: 30),
                  ),
                  Image.asset("assets/logoDrawer.png"),
                ],
              ),
            ),
            new Container(
              color: Colors.blueGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Cinema",
                    style: TextStyle(fontSize: 30),
                  ),
                  Image.asset("assets/logoDrawer.png"),
                ],
              ),
            ),
            new Container(
              color: Colors.teal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Viagens",
                    style: TextStyle(fontSize: 30),
                  ),
                  Image.asset("assets/logoDrawer.png"),
                ],
              ),
            ),
            new Container(
              color: Colors.lightGreenAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Aqui Perto",
                    style: TextStyle(fontSize: 30),
                  ),
                  Image.asset("assets/logoDrawer.png"),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  List<Widget> actionsWidget() {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.call_to_action),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite),
            ),
          ],
        )),
      )
    ];
  }

  Widget drawWidget() {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            key: new Key("header"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("assets/logoDrawer.png"),
                Text(
                  'Seja Bem Vindo',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blue[800],
            ),
          ),
          ListTile(
            title: Text('Na Cidade'),
            leading: Icon(Icons.location_city),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Cinemas'),
            leading: Icon(Icons.format_color_fill),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Viagens'),
            leading: Icon(Icons.local_pizza),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Aqui Perto'),
            leading: Icon(Icons.near_me),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text('Meus Cumpons'),
            leading: Icon(Icons.call_to_action),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Favoritos'),
            leading: Icon(Icons.favorite),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Notificações'),
            leading: Icon(Icons.notifications),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
