import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:katyfestacatalago/firebase_options.dart';
import 'package:katyfestacatalago/app/features/app_widget.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const AppWidget());
}
