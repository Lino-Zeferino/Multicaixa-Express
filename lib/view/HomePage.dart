// ignore_for_file: file_names

import 'package:flutter/material.dart';

const cardColor = Color(0xFF151f2b);
const fundo = Colors.black;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return const Scaffold(
      body: Center(
        child: Text("tela principal"),
      ),
    );
  }
}
