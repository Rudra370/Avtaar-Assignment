import 'package:AvtaarAssignment/Widget/custom_cards.dart';
import 'package:AvtaarAssignment/Widget/row_text.dart';
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var touched = 0;
  rowToched(int index) {
    setState(() {
      touched = index;
    });
  }

  final rowTitles = [
    'Design',
    'Enviroment',
    'Technologies',
    'Research',
    'Science',
    'Industry'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lessons',
          style:
              TextStyle(fontSize: 28, letterSpacing: 1.5, color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        toolbarHeight: 72,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.yellow[700],
              child: Text(
                '10',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            child: ListView.separated(
              separatorBuilder: (context, index) => Text(
                '•',
                style: TextStyle(color: Colors.grey[400], fontSize: 22),
              ),
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => rowToched(index),
                child: RowText(
                  selected: index == touched,
                  title: rowTitles[index],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          CustomCard(
            title: 'UI Design',
            subTitle: 'Visual appearance of app',
            imagePath: 'assets/images/ui.jpg',
            completed: 2,
          ),
          SizedBox(
            height: 8,
          ),
          CustomCard(
            title: 'UX Design',
            subTitle: 'Brain behind the design',
            imagePath: 'assets/images/ux.jpg',
            completed: 2,
          ),
          SizedBox(
            height: 8,
          ),
          CustomCard(
            title: 'Interaction Design',
            subTitle: 'Includes animation and effects',
            imagePath: 'assets/images/ui.jpg',
            completed: 3,
          ),
          SizedBox(
            height: 8,
          ),
          CustomCard(
            title: 'Industrial Design',
            subTitle: 'Visual appearance of app effect',
            imagePath: 'assets/images/ux.jpg',
            completed: 1,
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
