import 'package:e_commerce/pages.dart/login_page.dart';
import 'package:e_commerce/pages.dart/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

//show login page initially
bool showLoginPage = true;

//toggle b/w login & register page
void togglePage(){
  setState(() {
    showLoginPage=!showLoginPage;
  });

}

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(onTap: togglePage);
    }else{
      return RegisterPage(onTap: togglePage);
    }
  }
}