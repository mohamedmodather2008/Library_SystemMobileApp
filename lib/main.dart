import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revitionnn/models/bookmodel.dart';
import 'package:revitionnn/provider/bookprovider.dart';
import 'package:revitionnn/provider/registerprovider.dart';
import 'package:revitionnn/screens/Homescreen.dart';
import 'package:revitionnn/screens/loginpage.dart';
import 'package:revitionnn/screens/signup.dart';

void main() {

  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      
      providers: [ChangeNotifierProvider(create: (context) => Registerprovider(),),ChangeNotifierProvider(create: (context) => Bookprovider(),)],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Loginpage(),
      
      ),
    );
  }
}

