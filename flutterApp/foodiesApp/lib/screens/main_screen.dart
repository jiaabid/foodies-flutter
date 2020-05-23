import 'package:flutter/material.dart';
 //pages
import '../pages/HomePage.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
int currentTabIndex = 0;
HomePage home;
Widget currentPage;
List<Widget> pages ;
@override
void initState() {
    // TODO: implement initState
    super.initState();
    home = HomePage();
    pages = [home];
    currentPage = home;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
currentTabIndex = index;
currentPage = pages[index];
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
          title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text("Order")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text("Favourite")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile")
          ),
        ],
      ),
    );
  }
}
