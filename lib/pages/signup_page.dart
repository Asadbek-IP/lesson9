import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lesson9/pages/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController? _emailController = TextEditingController();
    TextEditingController? _passwordController = TextEditingController();
    TextEditingController? _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            SizedBox(height: 10,),
            Container(
              height: 48,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Color.fromARGB(255, 238, 235, 235)),
              child:  TextField(
                controller: _nameController,
               decoration: InputDecoration(hintText: "Name",hintStyle: TextStyle(color: Colors.grey),
               contentPadding: const EdgeInsets.all(10),
               border: OutlineInputBorder(borderRadius: BorderRadius.circular(6),borderSide: BorderSide(color: Colors.teal))
               ),
              ),
            ),
            Container(
              height: 48,
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
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

                },
                child: Text("Sign Up")),
            ), 
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:  [
                 const Text("Sizning akkountingiz bormi?", style: TextStyle(color: Colors.grey),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()),);
                  }, child: Text("Sign In"))
                ],
              ),
            )
          ]),
    );
  }
}