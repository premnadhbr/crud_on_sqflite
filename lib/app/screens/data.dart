import 'package:flutter/material.dart';
import 'package:sqflite_new_crud/app/database/db.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: FutureBuilder(
        future: DatabaseHelper.getdata(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              var item = snapshot.data![index];
              return ListTile(
                title: Text(item['name']),
                subtitle: Text('Age: ${item['age']}'),
                // Add any other details you want to display
              );
            },
          );
          ;
        },
      ),
    );
  }
}
