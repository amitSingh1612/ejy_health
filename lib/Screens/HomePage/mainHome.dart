import 'package:ejy_health/Screens/HomePage/Drawer/drawer.dart';
import 'package:ejy_health/Screens/HomePage/homeScreen/category.dart';
import 'package:ejy_health/Screens/HomePage/homeScreen/search.dart';
import 'package:flutter/material.dart';

import 'homeScreen/home.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex=0;
  void selectPage(int index){
    setState(() {
      _currentIndex= index;
    });
  }




  @override
  Widget build(BuildContext context) {
    Widget activePage=const Home();
    if (_currentIndex == 1){
      activePage=const Category();
    }
    else if(_currentIndex == 2){
      activePage=const Search();
    }

    return Scaffold(
      appBar: AppBar(
         title: const Text(" welcome here"),
      ),
      drawer:const MainDrawer(),
      body: activePage,
      bottomNavigationBar:BottomNavigationBar(
          selectedFontSize: 17,
          unselectedFontSize: 14,
          onTap:selectPage,
          currentIndex:_currentIndex ,
          items: const [
            BottomNavigationBarItem( icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon:Icon(Icons.set_meal),label: " category", ),
            BottomNavigationBarItem(icon:Icon(Icons.search),label: " search", ),
          ]) ,
    );
  }
}
