import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton(items:
    LanguageItems.titles.map((e) {
      return DropdownMenuItem(
          value: e,
          child: Row(
            children: [
              Icon(e.icon),
              const SizedBox(
                width: 10,
              ),
              Text(e.title),
            ],
          ));
    }).toList(),
        onChanged: (value){
        }
    );
  }
}

final class LanguageItems{
  final String title;
  final IconData icon;
  LanguageItems({required this.title, required this.icon});

  static final List<LanguageItems> titles = [
    LanguageItems(title: 'Turkish', icon: Icons.flag),
    LanguageItems(title: 'English', icon: Icons.flag),
  ];

}
