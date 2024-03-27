import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/presentation/screen/home/home_page.dart';
import 'package:katyfestacatalago/app/presentation/screen/home/widgets/appbar/auth/auth_dialog_page.dart';
import 'package:katyfestacatalago/app/presentation/widgets/theme/theme_config.dart';

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
        '/auth': (_) => const AuthDialogPage(),
      },
    );
  }
}
