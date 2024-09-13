import 'package:e_commerce/components/my_button.dart';
import 'package:e_commerce/components/my_textfield.dart';
import 'package:e_commerce/pages.dart/home-page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

   const LoginPage({super.key,required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controller
  final TextEditingController emailcontroller=TextEditingController();

  final TextEditingController passwordcontroller=TextEditingController();
  //login method BACKEND
  void login() {
    /*

        //BACKEND

    */

    //NAVIGATE TO HOME BAR
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //image
           Image.asset(
              'assets/logoo.png', // Replace with your image path
              width: 100,
              height: 100,
              ),
              const SizedBox(height: 25),
        
            //message,app slogan
            const Text(
              "Reva Store",
              style: TextStyle(
                fontSize: 29,
                fontFamily: 'Georgia',
                fontWeight: FontWeight.bold, // Change to the desired font weight
                fontStyle: FontStyle.italic, // Change to the desired font style
                color: Colors.black,
              ),
              ),
              const SizedBox(height: 25),

            //email
            MyTextField(
              controller: emailcontroller,
               hintText: "E-mail",
                obscureText: false,
                ),

                 const SizedBox(height: 10),

            //password textfield
            MyTextField(
              controller: passwordcontroller,
               hintText: "Password",
                obscureText: true,
                ),
                  const SizedBox(height: 10),
              //signin button
              MyButton(
                text: "Sign-In", 
              onTap: login,
              ),
                  const SizedBox(height: 25),

            //not a member register now

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                )),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register Now",
                   style: TextStyle(
                     fontSize: 15,
                fontFamily: 'Times New Roman',
                   color: Theme.of(context).colorScheme.inversePrimary,

                  )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}