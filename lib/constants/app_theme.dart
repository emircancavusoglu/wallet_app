import 'package:flutter/material.dart';

class WalletAppBarTheme {
  WalletAppBarTheme._();
  static const AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: Colors.black,
  );
  static const BottomNavigationBarTheme bottomNavigationBarTheme = BottomNavigationBarTheme(
      data: BottomNavigationBarThemeData(backgroundColor: Colors.purple,
      elevation: 0,
        selectedItemColor: Colors.black,

      ),
      child: Text("Upload Data"),
  );
}




