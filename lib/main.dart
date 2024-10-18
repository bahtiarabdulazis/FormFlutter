import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InputPage(
        onFormSubmit: (name, school, role, about) {
          // Callback function to handle form submission
          print('Nama: $name');
          print('Sekolah: $school');
          print('Role: $role');
          print('About Me: $about');
        },
      ),
    );
  }
}
