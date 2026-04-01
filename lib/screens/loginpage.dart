import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revitionnn/customscreens/textfiledcustom.dart';
import 'package:revitionnn/models/bookmodel.dart';
import 'package:revitionnn/provider/registerprovider.dart';
import 'package:revitionnn/screens/Homescreen.dart';
import 'package:revitionnn/screens/signup.dart';

class Loginpage extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

   Loginpage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Page",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
      ),

      body: Form(
        key: formkey,
        child: Column(
          children: [
            Icon(Icons.account_circle_outlined, size: 90),
            SizedBox(height: 20),
            Textfiledcustom(
              lable: "Email",
              hint: "Email",
              icon: Icons.email,
              cont: email,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return "please enter a email";
                } else if (!value.contains("@")) {
                  return "enter your email with @";
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            Textfiledcustom(
              lable: "Password",
              hint: "Password",
              icon: Icons.lock,
              cont: password,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return "enter the password";
                }
                return null;
              },
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () async {
                final r = Provider.of<Registerprovider>(context, listen: false);
                if (formkey.currentState!.validate()) {
                  await r.login(email: email.text, password: password.text);
                }
                if (r.r?.status == true) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homescreen()),
                  );
                }
              },
              child: Text("Login"),
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));}, child: Text("Dont have an account"))
          ],
        ),
      ),
    );
  }
}
