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
                              style: TextStyle(fontSize: 15),
                              
                            ),
                            
                          ),
                        ],
                        
                      ),
                      
                      const Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Row(children: [
                          Icon(Icons.account_balance_wallet_outlined),
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
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column( 
                    children: [
                      
                      Row(
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
                            'data:image/jpeg;base64,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',
                            height: 90,
                            width: 90,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 15),
                          const Expanded(
                            child: Text(
                              'เครื่องกรองน้ำ Water Filter RO-01',
                              style: TextStyle(fontSize: 15),
                              
                            ),
                          ),
                        ], 
                      ),
                      
                      const Row(
                      children: [
                        Text('4.5', style: TextStyle(fontSize: 12)),
                        Icon(Icons.star, size: 14, color: Colors.grey),
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