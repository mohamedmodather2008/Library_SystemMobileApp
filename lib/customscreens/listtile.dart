import 'package:flutter/material.dart';
import 'package:revitionnn/models/bookmodel.dart';
import 'package:revitionnn/screens/Details.dart';

class Listtile extends StatelessWidget {
  final book b;

   Listtile({super.key, required this.b});



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Details(b: b)));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        child: ListTile(
          leading: Icon(Icons.star),
          trailing: Text(b.author),
          title: Text(b.title),
          subtitle: Text(b.price.toString()),
        ),
      ),
    );
  }
}
