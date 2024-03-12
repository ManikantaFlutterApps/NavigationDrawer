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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Navigation Drawer'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        backgroundColor: Colors.yellowAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(child: Icon(Icons.person),),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),onTap: (){
              Navigator.pop(context);
            },),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),onTap: (){
              Navigator.pop(context);
            },),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Setting"),onTap: () {
              Navigator.pop(context);
            },),

          ],
        ),
      ),
    );
  }
}
