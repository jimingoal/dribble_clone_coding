import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFF7F1E8),
        elevation: 0.0,
        centerTitle: false,
        title: Row(
          children: [
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.drag_handle,
                color: Colors.red,
                size: 40,
              ),
            ),
            Text('mayple',
                style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 40.0,
                    color: Colors.black,
                    fontFamily: 'Gothic',
                    fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.menu,
              color: Colors.red,
              size: 40,
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10.0),
        color: Color(0xFFF7F1E8),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  "Find your industry's top vetted markeging experts",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(Color(0xFFF7F1E8), BlendMode.darken),
                  child: Image.asset(
                    'assets/images/stefan_garlson.png',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Stefan Garlson',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              '4.8',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24, color: Colors.red),
                            ),
                            SizedBox(width: 30),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star_half, color: Colors.red),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.red,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                    )
                  ],
                ),
              ),
              Column(children: <Widget>[
                Container(
                  child: Table(
                    border: TableBorder(
                      horizontalInside:
                          BorderSide(width: 1, color: Colors.grey[300]!, style: BorderStyle.solid),
                      verticalInside:
                          BorderSide(width: 1, color: Colors.grey[300]!, style: BorderStyle.solid),
                      top: BorderSide(color: Colors.grey[300]!, width: 1),
                    ),
                    children: [
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 30, 0, 30),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Text(
                              'MARKEING EXPERTISE:',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.blueGrey[600],
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Tech expert',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            )
                          ]),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 30, 0, 30),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Text(
                              'EXPERIENCE:',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.blueGrey[600],
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '8 years',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            )
                          ]),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 30, 0, 30),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Text(
                              'WORKED WITH:',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.blueGrey[600],
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Jolt, Monday, Salesforce',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            )
                          ]),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 30, 0, 30),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Text(
                              'AVG. INCREASE IN SALES:',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.blueGrey[600],
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '+146%',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            )
                          ]),
                        ),
                      ]),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
