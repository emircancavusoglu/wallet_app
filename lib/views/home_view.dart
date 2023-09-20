import 'package:flutter/material.dart';
import 'package:wallet_app/theme/app_theme.dart';

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
      backgroundColor: Colors.black,
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
                TextButton.styleFrom(backgroundColor: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.only(right: 280),
            child: const Text("Transactions",style: TextStyle(fontSize: 17,color: Colors.white),
            ),
          ),
          const SizedBox(height: 20,),
          const ProfileWidget(),
          const Padding(padding: EdgeInsets.only(top: 30)),
          const ProfileWidget(),
          const Padding(padding: EdgeInsets.only(top: 30)),
          const ProfileWidget(),
          const Padding(padding: EdgeInsets.only(top: 30)),
          const ProfileWidget(),
          const Padding(padding: EdgeInsets.only(top: 30)),
          const ProfileWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
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
    return Expanded(
      child: Row(
        children: [
          const Padding(padding: EdgeInsets.only(left: 10)),
          ClipOval(
            child: Image.network(ImageAdress.imageAdress,
              width: ImageSize.imageWidth,
              height: ImageSize.imageHeight,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Title(color: Colors.white, child: const Text(AppTexts.bank)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Title(color: Colors.white, child: const Text(AppTexts.topUp,
                  style: TextStyle(color: Colors.grey) ,)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
