import 'package:flutter/material.dart';
import 'package:portfolio_web/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fahad Ali',
      theme: ThemeData(
         
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
     home:const HomeScreen(),
    );
  }
}

// https://www.youtube.com/watch?v=19gWs_dqnNE&list=PLyfGAIknOAuRCyNQerjnQhzsZyt4mpEmj&index=3&ab_channel=ShohruhAK

 