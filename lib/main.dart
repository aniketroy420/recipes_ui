import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        top: false,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 275.0,
                  color: Color(0xFFEAE5DD),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 60.0, 15.0, 10.0),
                      child: Material(
                        elevation: 10.0,
                        borderRadius: BorderRadius.circular(25.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon:
                                  Icon(Icons.search, color: Colors.black),
                              contentPadding:
                                  EdgeInsets.only(left: 15.0, top: 15.0),
                              hintText: 'Search for recipes and channels',
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Container(
                        padding: EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                            color: Colors.amber,
                            style: BorderStyle.solid,
                            width: 3.0,
                          )),
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('POPULAR RECIPES',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'Timesroman',
                                        fontWeight: FontWeight.bold)),
                                Text('THIS WEEK',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'Timesroman',
                                        fontWeight: FontWeight.bold)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      padding: EdgeInsets.only(top: 15.0, left: 15.0),
                      height: 125.0,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _buildSuggestionCard('assets/balanced.jpg'),
                          _buildSuggestionCard('assets/balanced.jpg'),
                          _buildSuggestionCard('assets/balanced.jpg'),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 25.0),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'September 7',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    color: Colors.grey,
                    fontSize: 14.0),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'TODAY',
                style: TextStyle(
                    fontFamily: 'Timesroman',
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
            ),
            SizedBox(height: 20.0),
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    height: 350.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: AssetImage('assets/breakfast.jpg'),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 150.0, left: 60.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'BEST OF',
                        style: TextStyle(
                            fontFamily: 'Timesroman',
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'THE DAY',
                        style: TextStyle(
                            fontFamily: 'Timesroman',
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        height: 3.0,
                        width: 50.0,
                        color: Colors.orange,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _buildSuggestionCard(String img) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        elevation: 5.0,
        child: Container(
          height: 150.0,
          width: 250.0,
          child: Row(
            children: <Widget>[
              Container(
                height: 125.0,
                width: 100.0,
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Grilled Chicken',
                    style: TextStyle(
                        fontFamily: 'Quicksand', fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'with Fruit Salad',
                    style: TextStyle(
                        fontFamily: 'Quicksand', fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    height: 2.0,
                    width: 75.0,
                    color: Colors.orange,
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.5),
                            image: DecorationImage(
                                image: AssetImage('assets/chris.jpg'))),
                      ),
                      SizedBox(width: 10.0),
                      Text('James Oliver',
                          style: TextStyle(fontFamily: 'Quicksand'))
                    ],
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
