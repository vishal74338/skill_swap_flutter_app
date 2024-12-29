import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'router/app_routes.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Skill Swap",
      theme: ThemeData(
        fontFamily: 'Inter',
        primaryColor: Colors.white,
        timePickerTheme: const TimePickerThemeData(backgroundColor: Colors.white),
        datePickerTheme: const DatePickerThemeData(backgroundColor: Colors.white),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white, surfaceTint: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initial,
      getPages: AppRoutes.routes,

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/app_logo/app_logo.png"),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
