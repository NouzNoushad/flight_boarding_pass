import 'package:boarding_pass/presentation/boarding_pass.dart';
import 'package:boarding_pass/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColor.seedColor)),
      debugShowCheckedModeBanner: false,
      home: const FlightBoardingPass(),
    );
  }
}
