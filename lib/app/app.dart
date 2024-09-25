import 'package:flutter/material.dart';
import 'package:prime_number/core/theme/theme.dart';
import 'package:prime_number/features/prime_number/page/page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme().theme(),
      home: PrimeNumberPage(),
    );
  }
}
