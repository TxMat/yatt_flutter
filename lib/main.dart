import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yatt',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          brightness: Brightness.dark,
          primarySwatch: const MaterialColor(0xFF6cb44b, <int, Color>{
            50: Color(0xFFEDF6E9),
            100: Color(0xFFD3E9C9),
            200: Color(0xFFB6DAA5),
            300: Color(0xFF98CB81),
            400: Color(0xFF82BF66),
            500: Color(0xFF6CB44B),
            600: Color(0xFF64AD44),
            700: Color(0xFF59A43B),
            800: Color(0xFF4F9C33),
            900: Color(0xFF3D8C23),
          }),
          scaffoldBackgroundColor: const Color(0xFF171717),
          textTheme: const TextTheme(
                  // TextStyle(fontsize: 120,
                  bodyText1: TextStyle(),
                  bodyText2: TextStyle(),
                  headline1: TextStyle(fontSize: 60),
                  headline4: TextStyle(),
                  headline5: TextStyle(fontSize: 20))
              .apply(
            bodyColor: const Color(0xFFF9F9F9),
            displayColor: const Color(0xFFF9F9F9),
          )),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 350,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Bonjour',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Column(
                    children: [
                      Text(
                        'Bienvenue dans Yatt',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        "Configurons l'application ensemble",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 120,
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(40),
                          backgroundColor: Colors.green.shade900),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Not Available"),
                        ));
                      },
                      child: Text("Mode Auto",
                          style: Theme.of(context).textTheme.bodyMedium),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(40),
                          backgroundColor: Colors.green.shade900),
                      onPressed: () { },
                      child: Text(
                          "Mode Manuel",
                      style: Theme.of(context).textTheme.bodyMedium,),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
