import 'package:flutter/material.dart';
import 'pages/home_page.dart';


void main() { runApp(const MedApp()); }


class MedApp extends StatelessWidget {
const MedApp({super.key});
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'MedPlanner',
debugShowCheckedModeBanner: false,
theme: ThemeData(useMaterial3: true),
home: const HomePage(),
);
}
}