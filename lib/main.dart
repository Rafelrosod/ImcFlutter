import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'imc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const IMC());
}
