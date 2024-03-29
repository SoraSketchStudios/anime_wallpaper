import 'package:flutter/material.dart';
import 'package:frame_project/routes/route_names.dart';
import 'package:frame_project/shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateApp();
    super.initState();
  }

  Future<void> navigateApp() async {
    /// check first time.
    final bool isFirstTime = SharePreferenceController.getIsFirst();
    Future.delayed(const Duration(seconds: 1)).then((value) =>
        Navigator.pushNamed(context, isFirstTime ? RouteName.introScreen : RouteName.mainScreen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Splash Screen"),
      ),
    );
  }
}
