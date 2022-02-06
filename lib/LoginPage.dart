import 'package:flutter/material.dart';
import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe5e5e5),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 125,
            ),
            Container(
                width: 150,
                height: 125,
                child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset('assets/images/trood.png'),
                      ),
                    ]
                  ),
            ),
            Container(
                width: 500,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50.0),
                        topLeft: Radius.circular(50.0),
                    ),
                ),
                child: Padding(
                    padding: const EdgeInsets.only(left:40.0,right: 0.0,top: 45,bottom: 0),
                    child: Text(
                        'Login',
                        style: TextStyle(color: Color(0xff777777), fontSize: 30),
                    ),
                ),
                
            ),
            Container(
              width: 500,
              decoration: BoxDecoration(
                    color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 121.0, right: 121.0, top: 0, bottom: 0),
                  child:SizedBox(
                    height: 20,
                 ),
              ),
            ),
            Container(
                width: 500,
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                ),
                child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 15.0,bottom: 0),
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            hintText: 'andrew@trood.com'),
                    ),
                ),
            ),
            Container(
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                ),
                child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(

                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'secret'),
                    ),
                ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //       left: 15.0, right: 15.0, top: 15, bottom: 0),
            //   //padding: EdgeInsets.symmetric(horizontal: 15),
            //   child: TextField(

            //     obscureText: true,
            //     decoration: InputDecoration(
            //         border: OutlineInputBorder(),
            //         labelText: 'Password',
            //         hintText: 'secret'),
            //   ),
            // ),
            Container(
                height: 50,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                ),
                child: FlatButton(
                onPressed: (){
                    //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
                ),
            ),
            Container(
              width: 500,
              decoration: BoxDecoration(
                    color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 121.0, right: 121.0, top: 0, bottom: 0),
                  child:SizedBox(
                    height: 30,
                 ),
              ),
            ),
            Container(
              height: 50,
              width: 500,
              decoration: BoxDecoration(
                    color: Colors.white,
              ),
              child: Padding(
              padding: const EdgeInsets.only(
                  left: 121.0, right: 121.0, top: 0, bottom: 0),
                  child: Container(
                        height: 90,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white, borderRadius: BorderRadius.circular(10)
                    ),
                        child: Column(
                        children: [
                            GestureDetector(
                            onTap: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (_) => HomePage()));
                            },
                            child: Image.asset('assets/images/login.png'),
                            ),
                        ]
                    ),
                  ),
              ),
            ),
            Container(
              width: 500,
              decoration: BoxDecoration(
                    color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 121.0, right: 121.0, top: 0, bottom: 0),
                  child:SizedBox(
                    height: 30,
                 ),
              ),
            ),
            Container(
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                ),
                child: Padding(
                    padding: const EdgeInsets.only(left:159.0,right: 15.0,top: 15.0,bottom: 0),
                    child: Text('New User?'),
                ),
            ),
            Container(
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                ),
                child: Padding(
                    padding: const EdgeInsets.only(left:0.0,right: 0.0,top: 0.0,bottom: 75.0),
                    child: FlatButton(
                    onPressed: (){
                        //TODO FORGOT PASSWORD SCREEN GOES HERE
                    },
                    child: Text(
                        'Create Account',
                        style: TextStyle(color: Colors.blue),
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