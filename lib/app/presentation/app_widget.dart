import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:katyfestacatalago/app/presentation/widgets/theme/theme_config.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'KatyFestaCatalago',
      theme: ThemeConfig.theme,
      routerConfig: Modular.routerConfig,
    );
  }
}
