import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {  
  
  @override
  _homeScreenState createState() => _homeScreenState();
}
class _homeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text("Home"),
      ),
    );
  }
  
}