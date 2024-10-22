import 'package:flutter/material.dart';
import 'package:project/view/cadastro.dart';
import 'package:project/view/detalhes.dart';
import 'package:project/view/favoritos.dart';
import 'package:project/view/login.dart';
import 'package:project/view/message.dart';
import 'package:project/view/navigation.dart';
import 'package:project/view/usuario.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Login(),
    );
  }
}

