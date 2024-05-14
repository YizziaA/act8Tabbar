import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "Veterinaria Monge 0509",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      print("Botón Elevado presionado");
                    },
                    child: Text("Botón Elevado"),
                    style: ElevatedButton.styleFrom(
                        onSurface: Colors.teal,
                        onPrimary: Colors.blue,
                        primary: Colors.black,
                        textStyle: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: OutlinedButton(
                    onPressed: () {
                      print("Botón Outlined presionado");
                    },
                    child: Text("Botón Outlined"),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      overlayColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.cyan;
                        }
                        return Colors.teal;
                      }),
                      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic);
                        }
                        return TextStyle();
                      }),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      print("Botón de Texto presionado");
                    },
                    child: Text("Botón de texto"),
                    style: TextButton.styleFrom(
                        primary: Colors.black,
                        textStyle: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      print("Botón Elevado presionado");
                    },
                    icon: Icon(Icons.pets),
                    label: Text("Botón Elevado Icon"),
                    style: ElevatedButton.styleFrom(
                        onSurface: Colors.teal,
                        onPrimary: Colors.blue,
                        primary: Colors.black,
                        textStyle: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: OutlinedButton.icon(
                    onPressed: () {
                      print("Botón Outlined presionado Icon");
                    },
                    icon: Icon(Icons.pets),
                    label: Text("Botón Outlined Icon"),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      overlayColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.cyan;
                        }
                        return Colors.teal;
                      }),
                      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic);
                        }
                        return TextStyle();
                      }),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton.icon(
                    onPressed: () {
                      print("Botón de Texto presionado Icon");
                    },
                    icon: Icon(Icons.pets),
                    label: Text("Botón de texto Icon"),
                    style: TextButton.styleFrom(
                        primary: Colors.black,
                        textStyle: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
