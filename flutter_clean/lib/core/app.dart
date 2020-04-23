import 'package:bytebank/app/presentation/page/iteris/iteris_page.dart';
import 'package:bytebank/core/values/colors.dart';
import 'package:flutter/material.dart';

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: primaryColor,
            accentColor: accentColor,
            buttonTheme: ButtonThemeData(
                buttonColor: blueAccent, textTheme: ButtonTextTheme.primary)),
        home: IterisPage());
  }
}