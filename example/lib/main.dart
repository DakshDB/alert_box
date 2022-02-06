import 'package:flutter/material.dart';
import 'package:simple_alert_box/simple_alert_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Example for alert box',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Alert Box Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            AlertBox.showAlertBox(
              context: context,
              darkTheme: true,
              title: 'Alert ! Alert ! Alert !',
              body: 'My alert box',
              buttonText1: 'Noted 1',
              buttonText2: 'Noted 2',
              onPressedButton1: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  duration: Duration(milliseconds: 500),
                  content: Text('Button 1 Pressed'),
                ));
              },
              onPressedButton2: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  duration: Duration(milliseconds: 500),
                  content: Text('Button 2 Pressed'),
                ));
              },
            );
          },
          child: const Text(
            "Click for alert box",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
