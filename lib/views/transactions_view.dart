import 'package:flutter/material.dart';
import 'package:wallet_app/constants/app_theme.dart';
import 'package:wallet_app/service/transactions_model.dart';
import 'package:wallet_app/cache/cache_manager.dart';

class TransactionsView extends StatefulWidget {
  const TransactionsView({Key? key}) : super(key: key);

  @override
  State<TransactionsView> createState() => _TransactionsViewState();
}

class _TransactionsViewState extends State<TransactionsView> {
  @override
  void initState() {
    super.initState();
    profiles = ProfileItems().profiles;
    CacheManager cacheManager = CacheManager();
  }
  late CacheManager cacheManager;
  final String profileTitle = "Profile";
  late List<Profile>profiles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            cacheManager.saveString(SharedKeys.counter, profileTitle);
          }, icon: const Icon(Icons.download)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.remove_circle_outlined)),
        ],
        backgroundColor: WalletAppBarTheme.appBarTheme.backgroundColor,
        title: Text(profileTitle),
      ),
      body: ProfileWidget(profiles: profiles),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
    required this.profiles,
  });

  final List<Profile> profiles;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListView.builder(
        itemCount: profiles.length,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text(profiles[index].name),
          subtitle: Text(profiles[index].surname),
          trailing: Text(profiles[index].money.toString()),
          leading: Text(profiles[index].moneyType, style: Theme.of(context).textTheme.titleMedium?.copyWith(decoration: TextDecoration.underline),),
        );
      },),
    );
  }
}
