import 'package:coverflow/coverflow.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> titles = [
    "Title1",
    "Title2",
    "Title3",
    "Title4",
    "Title5",
    "Title6",
    "Title7",
    "Title8",
  ];

  final List<Widget> images = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.cyan,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.grey,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.amber,
    ),
  ];

  List<Widget> images2 = [
    Image.asset('assets/images/portrait.jpg'),
    Image.asset('assets/images/a2.jpg'),
    Image.asset('assets/images/a3.jpg'),
    Image.asset('assets/images/a4.jpg'),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: CoverFlow(
            images: images2,
            titles: titles,
            textStyle: TextStyle(color: Colors.red),
            // displayOnlyCenterTitle: true,
            onCenterItemSelected: (index) {
              print('Selected Item\'s index: $index');
            },
            shadowOpacity: 0.3,
            shadowOffset: Offset(3, 8),
          ),
        ),
      ),
    );
  }
}