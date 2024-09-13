
import 'package:e_commerce/auth/login_or_register.dart';
import 'package:e_commerce/models/restaurant.dart';
import 'package:e_commerce/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      //theme provider
      MultiProvider(providers: [
        //theme provider
        ChangeNotifierProvider(create: (context) =>ThemeProvider(),
        ),

        //restaurant provider
        ChangeNotifierProvider(create: (context) =>restaurant(),
        ),
      ],
      child: const MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

