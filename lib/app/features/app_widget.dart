import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/features/home/home_page.dart';
import 'package:katyfestacatalago/app/core/ui/theme/theme_config.dart';

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
      theme: ThemeConfig.theme,
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
      },
    );
  }
}
