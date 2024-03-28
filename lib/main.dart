import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:katyfestacatalago/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:katyfestacatalago/firebase_options.dart';
import 'package:katyfestacatalago/app/presentation/app_widget.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
