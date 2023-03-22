// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Map mapfinal = {};
  // String stringfinal2 = "";
  // Future apiCall() async {
  //   http.Response response =
  //       await http.get(Uri.parse("https://bhagavadgitaapi.in/slok/:ch/:sl"));
  //   if (response.statusCode == 200) {
  //     mapfinal = json.decode(response.body);

  //   }
  // }

  // @override
  // void initState() {
  //   apiCall();
  //   super.initState();
  // }

  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Scaffold(
        
        appBar: AppBar(
          title: Text("ShrimadBhahwatgitaJi"),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  _pdfViewerKey.currentState?.openBookmarkView();
                },
                icon: Icon(
                  Icons.bookmark,
                  color: Colors.white,
                  semanticLabel: 'Bookmark',
                ))
          ],
        ),
        body: SfPdfViewer.asset("assets/bbg.pdf"),
      ),
    );
  }
}
