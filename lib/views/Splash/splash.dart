import 'package:flutter/material.dart';
import 'package:restaurant_app/core/routes/app_routes.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, AppRoutes.onboarding);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(color:Colors.white, child: Center(child:Text("Restaurant App")));
  }
}