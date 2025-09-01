import 'package:amazone_clone/constants/global_variables.dart';
import 'package:amazone_clone/features/auth/screens/auth_screen.dart';
import 'package:amazone_clone/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
          onPrimary: GlobalVariables.blackcolor,
          secondary: const Color(0xFF131921),
          onSecondary: GlobalVariables.backgroundColor,
          error: Colors.red,
          onError: GlobalVariables.backgroundColor,
          surface: GlobalVariables.secondaryColor,
          onSurface: GlobalVariables.blackcolor,
        ),
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const AuthScreen(),
    );
  }
}
