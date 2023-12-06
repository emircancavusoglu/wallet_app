import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:wallet_app/view/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // FlutterConfig
  await FlutterConfig.loadEnvVariables();

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeView(),
  ));
}
