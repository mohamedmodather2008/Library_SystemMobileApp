import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revitionnn/customscreens/textfiledcustom.dart';
import 'package:revitionnn/provider/registerprovider.dart';
import 'package:revitionnn/screens/loginpage.dart';

class Signup extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController Name = TextEditingController();
  final TextEditingController contract = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final r=Provider.of<Registerprovider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Signup Page",
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
                  return "please enter your email";
                } else if (!value.contains("@")) {
                  return "please enter the email with @";
                }
                return null;
              },
            ),

            SizedBox(height: 20,),
                        Textfiledcustom(
              lable: "Name",
              hint: "Name",
              icon: Icons.scuba_diving_rounded,
              cont: Name,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return "please enter your name";
                } 
                return null;
              },
            ),

            SizedBox(height: 20,),

                        Textfiledcustom(
              lable: "Contract",
              hint: "Contract",
              icon: Icons.contact_emergency_sharp,
              cont: contract,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return "please enter your contract";
                } 
                return null;
              },
            ),
            SizedBox(height: 20,),

                        Textfiledcustom(
              lable: "Password",
              hint: "Password",
              icon: Icons.lock,
              cont: password,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return "please enter your password";
                } 
                return null;
              },
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: ()async{
              if(formkey.currentState!.validate()){
                 await r.signup(email: email.text, password: password.text, Name: Name.text, contract: contract.text);
              }
              if(r.r?.status==true){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage(),));
              }
            }, child: Text("Signup")),
                       SizedBox(height: 20,),
            TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage(),));}, child: Text("   have an account"))
          ],
        ),
      ),
    );
  }
}
