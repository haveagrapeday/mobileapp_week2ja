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
            seedColor: const Color.fromARGB(255, 23, 7, 255)),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 79, 111, 255),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => debugPrint('menu pressed'),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart_outlined),
              onPressed: () => debugPrint('cart pressed'),
            ),
            IconButton(
              icon: const Icon(Icons.info_outline),
              onPressed: () => debugPrint('info pressed'),
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
             
              Card(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column( 
                    children: [
                     
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://cdn-icons-png.flaticon.com/512/10485/10485137.png',
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 15),
                          const Expanded(
                            child: Text(
                              'โครงการคนละครึ่งพลัส สนับสนุนโดยภาครัฐ มาตรการกระตุ้นเศรษฐกิจ 50-50%',
                              style: TextStyle(fontSize: 14),
                              
                            ),
                            
                          ),
                        ],
                        
                      ),
                      
                      const Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Row(children: [
                          Icon(Icons.wallet),
                          Text(
                            'ยอดใช้สิทธิแล้ววันนี้',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                         ],
                        ),
                          
                          Text(
                            '50 บาท',
                            style: TextStyle(fontSize: 14, color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                        ],

                      ),
                     
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              
              Card(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column( 
                    children: [
                      
                      const Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         
                          Text(
                            'ยอดใช้สิทธิแล้ววันนี้',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          Text(
                            '50 บาท',
                            style: TextStyle(fontSize: 14, color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                        ],

                      ),
                     
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}