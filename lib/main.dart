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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4F6FFF)),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color.fromARGB(255, 245, 247, 250), 
      ),
      home: const AssignmentPage(),
    );
  }
}

class AssignmentPage extends StatelessWidget {
  const AssignmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const SizedBox(height: 20),

            _buildMainCard(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                      'https://cdn-icons-png.flaticon.com/512/10485/10485137.png',
                      height: 50, width: 50, fit: BoxFit.cover,
                    ),
                      const SizedBox(width: 15),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'โครงการคนละครึ่งพลัส สนับสนุนโดยภาครัฐ',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              'มาตรการกระตุ้นเศรษฐกิจ 50-50%',
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,  fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.account_balance_wallet_outlined, size: 25, color: Colors.black),
                          SizedBox(width: 8),
                          Text('ยอดคงเหลือสิทธิ์วันนี้'),
                        ],
                      ),
                      // แก้ไขคำว่าบาทให้เล็กลงและตัวบาง
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: '50 ',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'บาท',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

          
            _buildMainCard(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('ยอดใช้สิทธิ์แล้ววันนี้', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  // แก้ไขคำว่าบาทให้เล็กลงและตัวบาง
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: '150 ',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'บาท',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 100),



           

            _buildMainCard(

              child: Row(

                children: [

                Image.network(

                      'data:image/jpeg;base64,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',

                      height: 50, width: 50, fit: BoxFit.cover,

                    ),

                  const SizedBox(width: 15),

                  const Expanded(

                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Text(

                          'เครื่องกรองน้ำ Filter ...',

                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),

                        ),

                        Text(

                          'กรองน้ำแบบ 3 ท่อ 5 L/min ส...',

                          style: TextStyle(color: Colors.grey, fontSize: 13),

                        ),

                        SizedBox(height: 8),

                        Row(

                          mainAxisAlignment: MainAxisAlignment.end,

                          children: [

                            Text('4.5 ', style: TextStyle(fontWeight: FontWeight.bold)),

                            Icon(Icons.star, size: 18, color: Colors.orange),

                          ],

                        ),

                      ],

                    ),

                  ),

                ],

              ),

            ),

          ],

        ),

      ),

    );

  }



 

  Widget _buildMainCard({required Widget child}) {

    return Container(

      width: double.infinity,

      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(

        color: Colors.grey,

        borderRadius: BorderRadius.circular(15),

        boxShadow: [

          BoxShadow(

            color: Colors.black.withOpacity(0.05),

            blurRadius: 10,

            offset: const Offset(0, 4),

          ),

        ],

      ),

      child: child,

    );

  }
 

  Widget _buildRoundedImage(String url, double size) {

    return ClipRRect(

      borderRadius: BorderRadius.circular(10),

      child: Image.network(

        url,

        width: size,

        height: size,

        fit: BoxFit.cover,

        errorBuilder: (context, error, stackTrace) => Container(

          width: size,

          height: size,

          color: Colors.grey[300],

          child: const Icon(Icons.image_not_supported),

        ),

      ),

    );

  }

}