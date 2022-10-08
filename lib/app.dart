import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:giphy/constants/api_constants.dart';
import 'package:giphy/core/core.dart';
import 'package:giphy/features/features.dart';
import 'package:giphy/main.dart';

import 'package:giphy/data/data.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();

    _textEditingController = TextEditingController(text: 'hello');
  }

  @override
  void dispose() {
    _textEditingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Emulates giphy site theme.
      theme: primaryThemeData(),
      home: SearchPage.create(context),
    );
  }
}
