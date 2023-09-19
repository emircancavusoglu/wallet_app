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
            child: const Text("Transactions",style: TextStyle(fontSize: 17),
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 10)),
              ClipOval(
                child: Image.network('https://randomuser.me/api/portraits/men/66.jpg',
                  width: 40,
                  height: 40,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Title(color: Colors.white, child: const Text("Bank Bca")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Title(color: Colors.white, child: const Text("Top Up",
                      style: TextStyle(color: Colors.grey) ,)),
                  ),
                ],
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 10)),
              ClipOval(
                child: Image.network('https://randomuser.me/api/portraits/men/66.jpg',
                  width: 40,
                  height: 40,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Title(color: Colors.white, child: const Text("Bank Bca")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Title(color: Colors.white, child: const Text("Top Up",
                      style: TextStyle(color: Colors.grey) ,)),
                  ),
                ],
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 10)),
              ClipOval(
                child: Image.network('https://randomuser.me/api/portraits/men/66.jpg',
                  width: 40,
                  height: 40,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Title(color: Colors.white, child: const Text("Bank Bca")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Title(color: Colors.white, child: const Text("Top Up",
                      style: TextStyle(color: Colors.grey) ,)),
                  ),
                ],
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 10)),
              ClipOval(
                child: Image.network('https://randomuser.me/api/portraits/men/66.jpg',
                  width: 40,
                  height: 40,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Title(color: Colors.white, child: const Text(
                      "Bank Bca",
                    style: TextStyle(color: TextColor.titleColor),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Title(color: Colors.white, child: const Text("Top Up",
                      style: TextStyle(color: TextColor.subtitleColor) ,)),
                  ),
                ],
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 10)),
              ClipOval(
                child: Image.network('https://randomuser.me/api/portraits/men/66.jpg',
                  width: ImageSize.imageWidth,
                  height: ImageSize.imageHeight,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Title(color: Colors.white, child: const Text("Bank Bca")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Title(color: Colors.white, child: const Text("Top Up",
                      style: TextStyle(color: Colors.grey) ,)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            label:'',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.change_circle),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.settings),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.cloud_download_rounded),
          ),
        ],
      ),
    );
  }
}
