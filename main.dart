import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var emailText=TextEditingController();
    var passwordText=TextEditingController();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text("LOGIN PAGE", style: TextStyle(color: Colors.red, fontSize: 21),),
              ),
              backgroundColor: Colors.black,
            ),
    body:Center(
      child: Container(
        width:300,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.text,
              controller:emailText ,
              //enabled: false, for pause the first text input
             decoration: InputDecoration(
               hintText: 'Enter Email',
               focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10),
             borderSide: BorderSide(
            color: Colors.red,
               width: 2
             ),
          ),
               enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                color: Colors.blue,
                width: 2
                  ),
                ),
               disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2,
            )
              ),
              // suffixText: 'Username Exists',
               /*suffixIcon: IconButton(
                 icon: Icon(Icons.remove_red_eye_rounded,color: Colors.black),
                 onPressed: (){
                 },
               ),*/
               prefixIcon:Icon(Icons.email_outlined),
             ),
            ),

            Container(height:20),
            TextField(
              controller: passwordText,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  hintText: 'Enter Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                  ),
                  prefixIcon: Icon(Icons.password)
              ),

            ),
            ElevatedButton(onPressed:(){
              String Email=emailText.text.toString();
              String Pass=passwordText.text.toString();
              print("Email: $Email, pass: $Pass");
            },child:Text("login",style: TextStyle(color: Colors.black),))
          ],
        ),
      ),
    )
        ),
    );
  }
}

