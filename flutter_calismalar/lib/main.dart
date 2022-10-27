import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calismalar/101/text_learn_view.dart';
import '101/app_bar_learn.dart';
import '101/button_learn.dart';
import '101/card_leran.dart';
import '101/color_learn.dart';
import '101/container_sized_box_learn.dart';
import '101/icon_learn.dart';
import '101/image_learn.dart';
import '101/padding_learn.dart';
import '101/scaffold_learn.dart';
import '101/stateless_learn.dart';
import 'demos/note_demos_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          cardTheme: CardTheme(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
          ),
          errorColor: ColorsItems.sulu,
          appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
      )),
      home: const NoteDemos(),
    );
  }
}

