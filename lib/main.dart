import 'package:flutter/material.dart';
import 'package:hive1/db/db_functions/db_functions.dart';
import 'package:hive1/model/model.dart';
import 'package:hive1/screens/home.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  getAllStudents(); // initializing database

  if (!Hive.isAdapterRegistered(StudentModAdapter().typeId)) {
    // checking database is registered with typeid of the current model

    Hive.registerAdapter(
        StudentModAdapter()); //if the hive is not registered here registering the adapter
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal,brightness: Brightness.dark),
      
      home: HomeScreen(),
    );
  }
}
