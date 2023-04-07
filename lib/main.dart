import 'package:flutter/material.dart';
import 'package:webview/Screen/home_page.dart';
import 'package:webview/Screen/map_routing.dart';

void main() {
  runApp(const RouteApp());
}

class RouteApp extends StatelessWidget {
  const RouteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: <String, WidgetBuilder>{
        "MapRouting": (context) => const MapRouting(),
      },
    );
  }
}
