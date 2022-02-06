import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogoPage(),
    );
  }
}

class LogoPage extends StatefulWidget {
  @override
  _LogoPageState createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe5e5e5),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 240.0),
              child: Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Color(0xffe5e5e5),
                      borderRadius: BorderRadius.circular(50.0)),
                  // child: Image.asset('assets/images/logo.png'),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => LoginPage()));
                        },
                        child: Image.asset('assets/images/trood.png'),
                      ),
                    ]
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}