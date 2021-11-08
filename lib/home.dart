import 'package:depression_detector/connect_bluetooth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  static const stringList = [
    'How to maintain your mental health',
    'Are you feeling down?',
    'Ganing success through failures',
  ];

  @override
  Widget build(BuildContext context) {

    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Depression Detector',
            style: TextStyle(
              color: Colors.black
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text(
                  'Connect'
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ConnectBluetooth()),
                  );
                }, 
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffFFB800)
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  color: Color(0xffEBA900),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Center(
                      child: Text(
                        'Hi SDLive! 🤗 How you feeling today?',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ),
                  ),
                ),
                SizedBox(height: 8.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    'for you'
                  ),
                ),
                SizedBox(height: 8.0,),
                for(int i = 0; i < stringList.length; i++)
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xffEBA900),
                        width: 1
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            '${stringList[i]}',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 16.0,),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 30,
                              child: ElevatedButton(
                                child: Text(
                                  'Read',
                                  style: TextStyle(
                                    color: Colors.black
                                  ),
                                ),
                                onPressed: () {
                                
                                }, 
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 24
                                  ),
                                  
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(64)),
                                    side: BorderSide(
                                      color: Colors.black,
                                      width: 1
                                    ),
                                  )
                                ),
                            ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}