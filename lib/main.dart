import 'data/model/model.dart';
import 'package:flutter/material.dart';
import 'package:hive1/view/screens/home.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive1/logic/student/student_bloc.dart';
import 'package:hive1/data/core/dependency_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  await Hive.initFlutter();

  if (!Hive.isAdapterRegistered(StudentModAdapter().typeId)) {
    Hive.registerAdapter(StudentModAdapter());
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => StudentBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(primarySwatch: Colors.teal, brightness: Brightness.dark),
        home: const HomeScreen(),
      ),
    );
  }
}
