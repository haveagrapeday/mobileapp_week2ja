//import 'package:application_week2ja/about_page.dart';
import 'package:application_week2ja/display_page.dart';
import 'package:application_week2ja/welcome_page.dart';
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
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF4F6FFF),
        scaffoldBackgroundColor: Colors.white,
      ),

      routes: {
        '/' : (context) => const WelcomePage(),
        '/about' : (context) => const WelcomePage(),
        '/display' : (context) => 
            const DisplayPage(name: ''),
      },
      initialRoute: '/',
      home: const WelcomePage(),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  Widget _customCard({required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFE5E4E4),
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }

  Widget _priceText(String value) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: '$value ', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const TextSpan(text: 'บาท', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
        ],
      ),
    );
  }

  Widget _roundedImage(String url, double height, {bool isFullWidth = false}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: url.startsWith('http') 
          ? Image.network(
              url,
              height: height,
              width: isFullWidth ? double.infinity : height,
              fit: BoxFit.cover,
            )
          : Image.asset(
              url,
              height: height,
              width: isFullWidth ? double.infinity : height,
              fit: BoxFit.cover,
            ),
    );
  }

  Widget _actionButton(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black12),
      ),
      child: Text(text, textAlign: TextAlign.center, style: const TextStyle(fontSize: 9)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _customCard(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://cdn-icons-png.flaticon.com/512/10485/10485137.png',
                          height: 50, width: 50,
                        ),
                        const SizedBox(width: 15),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('โครงการคนละครึ่งพลัส สนับสนุนโดยภาครัฐ',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                              Text('มาตรการกระตุ้นเศรษฐกิจ 50-50%',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
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
                            Icon(Icons.account_balance_wallet_outlined, size: 22),
                            SizedBox(width: 8),
                            Text('ยอดคงเหลือสิทธิ์วันนี้'),
                          ],
                        ),
                        _priceText('50'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              _customCard(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('ยอดใช้สิทธิ์แล้ววันนี้',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    _priceText('150'),
                  ],
                ),
              ),

              const SizedBox(height: 60),

              _customCard(
                child: Row(
                  children: [
                    _roundedImage('assets/images/filter.png', 80),
                    const SizedBox(width: 15),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('เครื่องกรองน้ำ Filter ...',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          Text('กรองน้ำแบบ 3 ท่อ 5 L/min ส...',
                              style: TextStyle(color: Colors.grey, fontSize: 13)),
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
              const SizedBox(height: 20),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: _customCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _roundedImage('assets/images/filter2.png', 120, isFullWidth: true),
                          const SizedBox(height: 8),
                          const Text('เครื่องกรองน้ำ RO-01',
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                          const Text('ปริมาณ 15 L/min สำหรับ...',
                              style: TextStyle(fontSize: 10, color: Colors.grey)),
                          const Align(alignment: Alignment.centerRight, child: Text('4.5 ★', style: TextStyle(fontSize: 10))),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(child: _actionButton('Add To Cart')),
                              const SizedBox(width: 4),
                              Expanded(child: _actionButton('Buy Now')),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _customCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              CircleAvatar(radius: 12, backgroundColor: Colors.blueGrey),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text('User Review',
                                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                              ),
                              Icon(Icons.more_vert, size: 14),
                            ],
                          ),
                          const SizedBox(height: 8),
                          _roundedImage('assets/images/filter2.png', 100, isFullWidth: true),
                          const SizedBox(height: 8),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _SocialIcon(Icons.thumb_up_alt_outlined, 'Like'),
                              _SocialIcon(Icons.comment_outlined, 'Chat'),
                              _SocialIcon(Icons.share_outlined, 'Share'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  const _SocialIcon(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 14, color: Colors.black87),
        Text(label, style: const TextStyle(fontSize: 7)),
      ],
    );
  }
}
