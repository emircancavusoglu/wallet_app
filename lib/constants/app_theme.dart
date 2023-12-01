import 'package:flutter/material.dart';

class WalletAppBarTheme {
  final String uploadData = "Upload Data";
  WalletAppBarTheme._();
  static const AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: Colors.black,
  );
  static  BottomNavigationBarTheme bottomNavigationBarTheme = BottomNavigationBarTheme(
      data: const BottomNavigationBarThemeData(backgroundColor: Colors.grey,
      elevation: 0,
        selectedItemColor: Colors.black,
      ),
      child: Text(WalletAppBarTheme._().uploadData),
  );
}




