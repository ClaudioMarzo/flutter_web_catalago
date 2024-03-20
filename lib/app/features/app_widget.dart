import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/features/home/home_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KatyFestaCatalago',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
      },
    );
  }
}
