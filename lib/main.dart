import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nama Kalian',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      themeMode: ThemeMode.system,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Pertemuan6"),
        ),
        body:
     
            Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Headline Large',
                  style: Theme.of(context).textTheme.headlineLarge),
              SizedBox(height: 20),
              Text('Body Large', style: Theme.of(context).textTheme.bodyLarge),
              Text('Body Medium',
                  style: Theme.of(context).textTheme.bodyMedium),
              Text('Body Small', style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Elevated Button'),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {},
                child: Text('Outlined Button'),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: Text('Text Button'),
              ),
            ],
          ),
        ));
  }
}