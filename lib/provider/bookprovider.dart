import 'package:flutter/material.dart';
import 'package:revitionnn/models/bookmodel.dart';
import 'package:revitionnn/service/bookservice.dart';

class Bookprovider extends ChangeNotifier {
Bookmodel? m;
Bookmodel?filter;
Future<void>get()async{
  m=await Bookservice.get();
  notifyListeners();
}


Future<void>getbyname(String name)async{
  m=await Bookservice.getbyname(name);
  notifyListeners();
}
}