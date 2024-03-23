import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/features/home/widgets/appbar/app_bar_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidgets(),
      body: Container(),
    );
  }
}
