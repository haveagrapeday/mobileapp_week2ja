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
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 186, 253, 172)),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
              color: Color.fromARGB(255, 183, 248, 153))), // Theme Data

      home: Scaffold(
          appBar: AppBar(
            title: const Text('MyApp'),
            actions: [
              IconButton(
                icon : const Icon(Icons.shopping_cart),
                onPressed:() {
                  debugPrint('icon2 pressed');
                }, ),

            IconButton(
                icon : const Icon(Icons.home),
                onPressed:() {
                  debugPrint('icon3 pressed');
                }, ),

                IconButton(
                icon : const Icon(Icons.info),
                onPressed:() {
                  debugPrint('icon4 pressed');
                }, ),

                           
            ],
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                debugPrint('leading');
              },
            ),
          ), // AppBar
          body: Center(
            child: Column( children: [Text('hello cs mb' ,style: TextStyle(fontSize: 24 ),
            ), 
            Text(
              'kmutnb'
              ), 
              Row(
                children: [
                  Icon(Icons.ev_station),
                  Text(
                    'EV station'
                  )
                ],
              ),

              // Image.network('https://www.gruppolife.com/en/blog/youmeme-everything-you-didnt-want-to-know-about-memes',
              //height: 12),
              
              Image.asset('assets/images/meme.png'),

              ElevatedButton(
              onPressed: () {
                debugPrint("btn pressed");
              }, 
              child: Text("ok button",
                style: TextStyle(fontSize: 24),
              )
            )
          ],),
           
        )
      ), // Scaffold
    ); // MaterialApp
  }
}
