import 'package:application_week2ja/about_page.dart';
import 'package:application_week2ja/display_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output = ''; // double single quote or ""
  final _textController = TextEditingController();
  final _textController2 = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debugPrint('intstate');
    _output = 'Enter your name';
  }
 
  @override
  void dispose() {
    // TODO: implement activate
    _textController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            tooltip: 'About us',
            onPressed: ()  {
              Navigator.push(context, 
              MaterialPageRoute(
                builder: (context) => const AboutPage(),
                )
              );
            },
          ),
        ],
      ), // AppBar
      body: Center(
        child: Column(
          children: [
            const Text(
              'Hello, Welcome Page na',
            ),



            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                hintText: 'Enter Name',
                labelText: 'Name',
              ),
            ),


             TextField(
              controller: _textController2,
              decoration: const InputDecoration(
                hintText: 'Enter age',
                labelText: 'age',
              ),
            ),
            
            
            // Text
            Text(
              '${_output}',
            ), // Text
            const SizedBox(
              height: 14,
            ), // SizedBox
            ElevatedButton(
              onPressed: () {
                debugPrint('pressed button');
                setState(() {
                  _output = 'Kobkiat s.., good job';
                });
              },
              child: const Text(
                'Click me',
              ), // Text
            ),
             ElevatedButton(
              onPressed: () {
                String input = _textController.text;
                 String inputAge = _textController2.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DisplayPage(
                      name: input,
                      age: inputAge,)
                      )
                  );
                },
              child: const Text(
                'Display on next page',
              ), // Text
            ),
             // ElevatedButton
                      ],
        ), // Column
      ), // Center
    );
  }
  
}