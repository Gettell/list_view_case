import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(),
      body: User(),
    ),
  ));
}

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  final List <String> Name = <String> ['Аня', 'Боря', 'Варя', 'Гена', 'Дима','Егор','Женя'];
  final List <String> Phone = <String> ['+7(911) 123-45-01', '+7(911) 123-45-02', '+7(911) 123-45-03', '+7(911) 123-45-04', '+7(911) 123-45-05', '+7(911) 123-45-06', '+7(911) 123-45-07'];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder (
      padding: EdgeInsets.all(20),
      itemCount: Name.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(padding: EdgeInsets.all (10),
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors. lime,
              border: Border.all()
          ),
          child: ListTile (
            leading: Icon(Icons.person),
          title: Text ('${Name[index]}', style: TextStyle(fontSize: 16,),),
          subtitle: Text ('${Phone [index]}'),
          selected: index == _selectedIndex,
          onTap: () {
            setState(() {
              _selectedIndex = index;
    });
    },
          ),
        );
    },);
}
}



