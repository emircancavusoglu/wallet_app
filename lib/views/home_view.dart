import 'package:flutter/material.dart';
import 'package:wallet_app/constants/app_theme.dart';
import 'package:wallet_app/constants/colors.dart';
import '../constants/assets.dart';
import '../constants/dimens.dart';
import '../constants/strings.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WalletAppBarTheme.appBarTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: WalletAppBarTheme.appBarTheme.backgroundColor,
        leading: const Icon(Icons.person),
        actions: const [
          Icon(Icons.notifications_none),
        ],
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.only(left: 20, top: 20,right: 20),
            child: Container(
              color: Colors.indigo,
              width: 400,
              height: 200,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("245,446",style: TextStyle(fontSize: 25),),
                  SizedBox(height: 10,),
                  Text("Total Balance",style: TextStyle(fontSize: 12),),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.price_change),
                label: const Text("Top Up"),style: TextButton.styleFrom(backgroundColor: Colors.grey),
              ),
              const SizedBox(width: 10,),
              ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.currency_exchange_sharp),
                label: const Text("Transfer"),style:
                TextButton.styleFrom(backgroundColor: TextColor.subtitleColor),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.only(right: 280),
            child: const Text("Transactions",style: TextStyle(fontSize: 17,color: TextColor.titleColor),
            ),
          ),
          const SizedBox(height: 20,),
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
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.grey,
        items: [
          buildBottomNavigationBarItem(const Icon(Icons.home)),
          buildBottomNavigationBarItem(const Icon(Icons.settings)),
          buildBottomNavigationBarItem(const Icon(Icons.cloud_download_rounded)),
        ],
      ),
    );
  }
  BottomNavigationBarItem buildBottomNavigationBarItem(Icon icon) {
    return BottomNavigationBarItem(label: '', icon: icon);
  }
}
class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
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
                    style: TextStyle(color: Colors.grey) ,)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
