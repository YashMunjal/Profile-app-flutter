import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
                Text(
                  'Yash Munjal',
                  style: TextStyle(color: Colors.grey[300],fontSize: 35.0,fontWeight: FontWeight.w600,fontFamily: 'Pacifico'),
                ),
                Text(
                  'UI/UX | MERN STACK | Flutter Developer ',
                  style: TextStyle(color:Colors.blueGrey[100],fontSize: 20.0,fontWeight: FontWeight.w300,fontStyle: FontStyle.italic),

                ),
                SizedBox.fromSize(
                  size: Size(double.infinity, 20),
                ),
                RaisedButton(
                  color:Colors.white10,
                  textColor: Colors.grey,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    _launchURL();
                  },
                  child: Text(
                    "Visit My Github Profile",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                SizedBox.fromSize(
                  size: Size(double.infinity, 20),
                ),
                RaisedButton(
                  color:Colors.white10,
                  textColor: Colors.grey,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    _launchURLWeb();
                  },
                  child: Text(
                    "Visit My Website",
                    style: TextStyle(fontSize: 20.0),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://github.com/yashmunjal';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLWeb() async {
  const url = 'https://yashmunjal.tech';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}