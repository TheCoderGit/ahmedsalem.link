import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ahmed Salem',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
            ),
            child: Card(
              margin: const EdgeInsets.all(5),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'HI, I\'m Ahmed Salem. I works as a Banker, And a freelancer programmer. ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.redressed(
                      fontSize: 40, color: Colors.indigo[900]),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: _goToPuzzle,
                child: const Text(
                  "Check My Puzzle Game",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Check My CV",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Text(
                    'coming soon',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
            ),
            child: Card(
              margin: const EdgeInsets.all(5),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'The Site is made with Flutter',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.redressed(
                      fontSize: 40, color: Colors.indigo[900]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _goToPuzzle() async {
    const url = 'puzzle.ahmedsalem.link';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
