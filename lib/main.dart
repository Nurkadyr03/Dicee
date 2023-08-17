import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 8, 62, 16)),
        //useMaterial3: true,
      ),
      home: const DiceeApp(),
    );
  }
}

class DiceeApp extends StatefulWidget {
  const DiceeApp({
    super.key,
  });

  @override
  State<DiceeApp> createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  int on_dice=1;
  int sol_dice=1;
  
  

  @override
  Widget build(BuildContext context) {
    void dice_nomer(){
    setState(() {});
    on_dice=Random().nextInt(6) + 1;
    sol_dice=Random().nextInt(6)+1;
  }
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 74, 139, 76),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text('Dice'),
      ),
      body: Center(
          child: Row(
        children: <Widget>[


          Expanded(
            child: TextButton(
              onPressed: dice_nomer,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('dice$sol_dice.png'),
              ),
            ),
          ),


          Expanded(
            child: TextButton(
              onPressed: dice_nomer,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('dice$on_dice.png'),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
