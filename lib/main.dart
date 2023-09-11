import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kwen Lakay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset('assets/kl_logo.png'),
          const Text('Kwen Lakay', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.indigo),)
        ],
      ),
      backgroundColor: Colors.white,
      nextScreen: const Home(),
      splashIconSize: 444,
      duration: 2000,
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: const Duration(seconds: 1),
    );
  }
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: WebView(
            initialUrl: "https://kwenlakay.com/",
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }
}