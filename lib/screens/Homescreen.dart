import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revitionnn/customscreens/listtile.dart';
import 'package:revitionnn/models/bookmodel.dart';
import 'package:revitionnn/provider/bookprovider.dart';

class Homescreen extends StatelessWidget {
  final TextEditingController cont=TextEditingController();

   Homescreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Bookprovider>(builder: (context, value, child) {
        final books=value.m?.l;
        if(books==null){
          value.get();
          return Center(child: CircularProgressIndicator(),);
        }
        else{
          return 
             Column(
              children: [
             TextField(
              controller: cont,
              onChanged: (valu) {
                if(valu.isEmpty){
                  value.get();
                  return;
                }
                else{
                  value.getbyname(cont.text);
                }
              },
             ),
            
                Expanded(
                  child: ListView.builder(
                    itemCount: books.length,
                    itemBuilder:  (context, index) {
                     return Listtile(b: books[index]);
                    
                  },),
                ),
              ],
            
          );
        }
      },),
    );
  }
}