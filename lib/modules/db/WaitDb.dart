import 'package:Calculater/shared/components/components.dart';
import 'package:flutter/material.dart';

class WaitDb extends StatefulWidget {
  @override
  _WaitDbState createState() => _WaitDbState();
}

class _WaitDbState extends State<WaitDb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WaitDb'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => buildItem(),
          separatorBuilder: (context, index) => buildSeparator(),
          itemCount: 15,
      ) ,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: Icon(
          Icons.edit,
        ),

      ),
    );
  }
}

Widget buildItem() => Padding(
  padding: EdgeInsets.all(20.0),
  child: Row(
    children: [
      CircleAvatar(
        radius: 30.0,
        child: Text(
          '4',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Text(
        'Ahmed',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
      ),
    ],
  ),
);
