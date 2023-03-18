import 'package:flutter/material.dart';

// import 'home/home.dart';
import 'navbar/bottom_navbar.dart';

void main() {
  runApp( const MyApp() );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: BottomNavbarWidget(),
    );
  }
}
 

