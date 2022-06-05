import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double nmbr1 = 0;
  double nmbr2 = 0;
  double result = 0;
  bool control = true;
  var sayilarlist = [];
  var tfController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenInformation = MediaQuery.of(context);
    final double screenWidth = screenInformation.size.width;
    final double screenHeight = screenInformation.size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade600,
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                  child: Text(
                    "$result",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
                color: Colors.grey.shade800,
                width: screenWidth,
              ),
            ),
            SizedBox(
              width: screenWidth / 1.5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Visibility(
                    visible: control,
                    child: TextField(
                      controller: tfController,
                    ),
                  ),
                  color: Colors.grey.shade800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      var sayi1 = double.parse(tfController.text);
                      sayilarlist.add(sayi1);
                      tfController.text = "";
                    },
                    child: Container(
                      child: Center(
                        child: Text("+"),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      String s = "";
                      var l1 = [];
                      if (tfController.text.length > 1) {
                        for (var i = 0; i < tfController.text.length - 1; i++) {
                          s += tfController.text[i];
                        }
                        tfController.text = s;
                        print(tfController.text);
                      } else
                        tfController.text = "";
                    },
                    child: Container(
                      child: Center(
                        child: Text("<"),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        var sayi1 = double.parse(tfController.text);
                        sayilarlist.add(sayi1);
                        for (var i = 0; i < sayilarlist.length; i++) {
                          nmbr2 += sayilarlist[i];
                        }
                        print("Sonuc : $nmbr2");
                        result = nmbr2;
                        sayilarlist = [];
                        nmbr2 = 0;
                        tfController.text = "";
                      });
                    },
                    child: Container(
                      child: Center(
                        child: Text("="),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      tfController.text += "7";
                      print(tfController.text);
                    },
                    child: Container(
                      child: Center(
                        child: Text("7"),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      tfController.text += "8";
                      print(tfController.text);
                    },
                    child: Container(
                      child: Center(
                        child: Text("8"),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      tfController.text += "9";
                      print(tfController.text);
                    },
                    child: Container(
                      child: Center(
                        child: Text("9"),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      tfController.text += "4";
                      print(tfController.text);
                    },
                    child: Container(
                      child: Center(
                        child: Text("4"),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      tfController.text += "5";
                      print(tfController.text);
                    },
                    child: Container(
                      child: Center(
                        child: Text("5"),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      tfController.text += "6";
                      print(tfController.text);
                    },
                    child: Container(
                      child: Center(
                        child: Text("6"),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      tfController.text += "1";
                      print(tfController.text);
                    },
                    child: Container(
                      child: Center(
                        child: Text("1"),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      tfController.text += "2";
                      print(tfController.text);
                    },
                    child: Container(
                      child: Center(
                        child: Text("2"),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      tfController.text += "3";
                      print(tfController.text);
                    },
                    child: Container(
                      child: Center(
                        child: Text("3"),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      tfController.text += "0";
                      print(tfController.text);
                    },
                    child: Container(
                      child: Center(
                        child: Text("0"),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      tfController.text += ".";
                      print(tfController.text);
                    },
                    child: Container(
                      child: Center(
                        child: Text("."),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tfController.text = "";
                        sayilarlist = [];
                        result = 0;
                      });
                    },
                    child: Container(
                      child: Center(
                        child: Text("C"),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
