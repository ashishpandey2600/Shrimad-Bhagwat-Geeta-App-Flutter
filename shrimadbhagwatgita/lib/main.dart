import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map mapfinal = {};
  String stringfinal2 = "";
  Future apiCall() async {
    http.Response response =
        await http.get(Uri.parse("https://bhagavadgitaapi.in/slok/:ch/:sl"));
    if (response.statusCode == 200) {
      mapfinal = json.decode(response.body);

    }
  }

  @override
  void initState() {
    apiCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("data"),),
        body: PageView.builder(itemBuilder: (index, context) {
        return PageView(
          children: [
            Text(mapfinal.toString()),
          ],
        );
      })),
    );
  }
}
