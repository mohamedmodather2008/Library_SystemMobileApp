import 'package:flutter/material.dart';
import 'package:revitionnn/models/bookmodel.dart';
import 'package:revitionnn/screens/Homescreen.dart';

class Details extends StatelessWidget {
  final book b;

  const Details({super.key, required this.b});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Details Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homescreen()),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40), // 👈 المسافة من فوق
          child: Align(
            alignment: Alignment.topCenter, // 👈 يخليها فوق في النص
            child: Card(
              color: Colors.blue.shade50,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min, // 👈 على قد المحتوى
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      b.title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Author: ${b.author}"),
                    SizedBox(height: 8),
                    Text("Price: ${b.price} \$"),
                    SizedBox(height: 8),
                    Text("Rate: ⭐ ${b.rate}"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
