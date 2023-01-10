import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List themes = <Color>[
    Colors.pink,
    Colors.black,
    Colors.amber,
    Colors.blue,
    Colors.green,
    Colors.orange
  ];
  Color currentColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("My first mini app!"),
          ),
          backgroundColor: Color.fromARGB(255, 24, 36, 45),
        ),
        body: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              for (Color theme in themes)
                InkWell(
                  onTap: () {
                    setState(() {
                      currentColor = theme;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(8),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'Choose',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: theme,
                  ),
                )
            ],
          ),
        ),
        backgroundColor: currentColor,
      ),
    );
  }
}
