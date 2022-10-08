import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lesson9/pages/home_page.dart';
import 'package:lesson9/pages/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController? _emailController = TextEditingController();
    TextEditingController? _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
     return false;
      },
      child: Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
              ),
              const Text(
                "Instagram",
                style: TextStyle(fontSize: 45, fontFamily: "Billabong"),
              ),
    
              Container(
                height: 48,
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Color.fromARGB(255, 238, 235, 235)),
                child:  TextField(
                  controller: _emailController,
                 decoration: InputDecoration(hintText: "Email",hintStyle: TextStyle(color: Colors.grey),
                 contentPadding: const EdgeInsets.all(10),
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(6),borderSide: BorderSide(color: Colors.teal))
                 ),
                ),
              ),
              Container(
                
                height: 48,
                margin: EdgeInsets.symmetric(horizontal: 16,vertical: 3),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Color.fromARGB(255, 238, 235, 235)),
                child:  TextField(
                  controller: _passwordController,
                 decoration: InputDecoration(hintText: "Password",hintStyle: TextStyle(color: Colors.grey),
                 contentPadding: const EdgeInsets.all(10),
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(6),borderSide: BorderSide(color: Colors.teal))
                 ),
                ),
              ),
               
              Container(
                height: 43,
                margin: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>HomePage() ));
                  },
                  child: Text("Log In")),
              ), 
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:  [
                   const Text("Sizning akkountingiz yo'qmi?", style: TextStyle(color: Colors.grey),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                    }, child: Text("Sign Up"))
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
