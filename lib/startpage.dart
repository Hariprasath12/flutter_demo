import 'package:flutter/material.dart';
import 'package:hello_world/models/path.dart';

class start extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Flutter')
      ),
          body: ListView.builder(
  itemCount: paths.length,
  itemBuilder: (context, index) {
    Path path=paths[index];
    return GestureDetector(
      onTap: (){
Navigator.pushNamed(context, path.path_url);

      },
          child: Card(
        color: Colors.deepOrange,
        child: ListTile(
          title:Text(path.name,style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  },
)
    );
  }
}