import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController senderTextEditingController = TextEditingController();
  TextEditingController receivedEditingController = TextEditingController();
  String result = 'Suggestions...';


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Container(
              decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bg.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, left: 13, right: 13),
              width: double.infinity,
              height: 60,
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: receivedEditingController,
                          decoration: const InputDecoration(
                              fillColor: Colors.white,
                              hintText: 'received text here...',
                              filled: true,
                              border: InputBorder.none),
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                        receivedEditingController.clear();
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.only(
                            top: 13, left: 15, bottom: 13, right: 12),
                        primary: Colors.red),
                    child: const Icon(
                      Icons.send,
                      size: 25,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 10, right: 10),
              width: double.infinity,
              height: 160,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                color: Colors.white,
                child: Center(
                  child: Container(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        result,
                        style: const TextStyle(fontSize: 18),
                      )),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 20, left: 13, right: 13, bottom: 15),
              width: double.infinity,
              height: 60,
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: senderTextEditingController,
                          decoration: const InputDecoration(
                              fillColor: Colors.white,
                              hintText: 'sender text here...',
                              filled: true,
                              border: InputBorder.none),
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      senderTextEditingController.clear();
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.only(
                            top: 13, left: 15, bottom: 13, right: 12),
                        primary: Colors.green),
                    child: const Icon(
                      Icons.send,
                      size: 25,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
