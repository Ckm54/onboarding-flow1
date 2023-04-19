import 'package:flutter/material.dart';
import 'package:onboarding_screen/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'onboarding_screen.dart';

bool? isUserOnboarded;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isUserOnboarded = prefs.getBool('userOnboarded');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool hasBeenOnboarded = false;
  @override
  void initState() {
    if (isUserOnboarded != null) {
      setState(() {
        hasBeenOnboarded = true;
      });
    }
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: hasBeenOnboarded ? const HomePage() : const OnboardingScreen(),
    );
  }
}
