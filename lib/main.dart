import 'package:flutter/material.dart';
import "web_view_container.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {"/webViewContainer": (context) => const WebViewContainer()},
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Details"),
      ),
      body: Center(
        child: SizedBox(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Ademola Otunba-Marcus",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              Image.asset(
                "images/WhatsApp Image 2023-09-08 at 10.16.12 PM.jpeg",
                height: 200,
                width: 200,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/webViewContainer');
                },
                child: const Text("Open GitHub"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
