import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF2F2F2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: MediaQuery.of(context).size.height / 2.4,
              decoration: BoxDecoration(
                color: Colors.white10,
                image: DecorationImage(
                    image: AssetImage('images/fruit.png'), fit: BoxFit.fill),
              ),
            ),
            Text(
              "We'll Find The Best",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF537148),
                  fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "find the nearest places with the best organic foods and make your life healthier!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF53714B),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
                padding: const EdgeInsets.all(0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[Color(0xFF13E3D2), Color(0xFF5D74E2)],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 150,
                    minHeight: 36,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Image.network(
                  'https://cdn.arstechnica.net/wp-content/uploads/2018/06/7-2-1.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
