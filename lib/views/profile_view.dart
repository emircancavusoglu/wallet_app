import 'package:flutter/material.dart';
import 'package:wallet_app/constants/app_theme.dart';
import 'package:wallet_app/model.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    super.initState();
    profiles = ProfileItems().profiles;
  }
  final String profileTitle = "Profile";
  late List<Profile>profiles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WalletAppBarTheme.appBarTheme.backgroundColor,
        title: Text(profileTitle),
      ),
      body: ListView.builder(
        itemCount: profiles.length,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text(profiles[index].name),
          subtitle: Text(profiles[index].surname),
          trailing: Text(profiles[index].money.toString()),
          leading: Text(profiles[index].moneyType),
        );
      },),
    );
  }
}
