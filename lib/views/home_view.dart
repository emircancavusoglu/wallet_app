import 'package:flutter/material.dart';
import 'package:wallet_app/constants/app_theme.dart';
import 'package:wallet_app/constants/colors.dart';
import 'package:wallet_app/views/home_dropdown.dart';
import 'package:wallet_app/views/upload_data.dart';
import '../constants/assets.dart';
import '../constants/dimens.dart';
import '../constants/strings.dart';
import '../management/state_management.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends StateManagement{
  String transfer = "Transfer";
  String topUp = "Top Up";
  String totalBalance = "Total Balance";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WalletAppBarTheme.appBarTheme.backgroundColor,
      appBar: AppBar(
        title: const Text(AppTexts.appTitle),
        backgroundColor: WalletAppBarTheme.appBarTheme.backgroundColor,
        // leading: const Icon(Icons.person),
        actions: const [
          DropDown(),
          Icon(Icons.notifications_none),
        ],
      ),
      drawer: Drawer(backgroundColor: Colors.white,
          child: Column(
            children: [
              Text(DrawerMenuItems.profile.name),
              Text(DrawerMenuItems.transactions.name),
              Text(DrawerMenuItems.registeredPersons.name),
            ],
          ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: const EdgeInsets.only(left: 20, top: 20,right: 20),
              child: Container(
                color: Colors.indigo,
                width: 400,
                height: 200,
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppTexts.amount.toString(),style: const TextStyle(fontSize: 25),),
                    SizedBox(height: WidgetSizes.sizedBoxHeight.value(),),
                    Text(totalBalance,style: const TextStyle(fontSize: 12),),
                  ],
                ),
              ),
            ),
            SizedBox(height: WidgetSizes.sizedBoxHeight.value(),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButtonIcon(topUp: topUp),
                const SizedBox(width: 10,),
                ElevatedButton.icon(onPressed: (){
                  openTransferDialog(context);
                }, icon: const Icon(Icons.currency_exchange_sharp),
                  label: Text(transfer),style:
                  TextButton.styleFrom(backgroundColor: TextColor.subtitleColor),
                ),
              ],
            ),
            SizedBox(height: WidgetSizes.sizedBoxHeight.value(),),
            Container(
              margin:  const EdgeInsets.only(right: 280),
              child: Text(DrawerMenuItems.transactions.name,style: const TextStyle(fontSize: 17,color:
              TextColor.titleColor
              ),
              ),
            ),
            SizedBox(height: WidgetSizes.sizedBoxHeight.value(),),
            const ProfileWidget(),
            const Padding(padding: EdgeInsets.only(top: PaddingSizes.paddingTop)),
            const ProfileWidget(),
            const Padding(padding: EdgeInsets.only(top: PaddingSizes.paddingTop)),
            const ProfileWidget(),
            const Padding(padding: EdgeInsets.only(top: PaddingSizes.paddingTop)),
            const ProfileWidget(),
            const Padding(padding: EdgeInsets.only(top: PaddingSizes.paddingTop)),
            const ProfileWidget(),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }
  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      onTap: onItemTapped,
      currentIndex: selectedIndex,
      backgroundColor: WalletAppBarTheme.bottomNavigationBarTheme.data.backgroundColor,
      items: [
        buildBottomNavigationBarItem(const Icon(Icons.home),MaterialPageRoute(builder: (context) => const HomeView(),)),
        buildBottomNavigationBarItem(const Icon(Icons.transfer_within_a_station),MaterialPageRoute(builder: (context) => const HomeView(),)),
        buildBottomNavigationBarItem(const Icon(Icons.cloud_download_rounded),MaterialPageRoute(builder: (context) => const UploadData(),)),
      ],
    );
  }
}

class ElevatedButtonIcon extends StatelessWidget {
  const ElevatedButtonIcon({
    super.key,
    required this.topUp,
  });

  final String topUp;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(onPressed: (){
    }, icon: const Icon(Icons.price_change),
      label: Text(topUp),style: TextButton.styleFrom(backgroundColor: Colors.grey),
    );
  }
}
class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) :super (key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          const Padding(padding: EdgeInsets.only(left: PaddingSizes.paddingLeft)),
          ClipOval(
            child: Image.network(ImageAdress.profileImageAdress,
              width: ImageSize.imageWidth,
              height: ImageSize.imageHeight,
            ),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: PaddingSizes.paddingLeft),
                child: Text(AppTexts.bank,style: TextStyle(color: TextColor.titleColor),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: PaddingSizes.paddingLeft),
                child: Title(color: Colors.white, child: const Text(AppTexts.topUp,
                  style: TextStyle(color: Colors.grey),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}