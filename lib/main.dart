import 'package:flutter/material.dart';

void main() {
  runApp(PointApp());
}

class PointApp extends StatelessWidget {
  const PointApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Points App',
      debugShowCheckedModeBanner: false,
      home: PointHome(),
    );
  }
}

class PointHome extends StatefulWidget {
  const PointHome({super.key});

  @override
  State<PointHome> createState() => _PointHomeState();
}

class _PointHomeState extends State<PointHome> {
  int number = 0;

  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Point App'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.restore_outlined,
          color: Colors.blue,
        ),
        onPressed: resetNumber,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          const Center(
            child: Text(
              "Point is ",
              style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              number.toString(),
              style: const TextStyle(
                  color: Color(0xff16423c),
                  fontSize: 125,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                ),
                child: const Text(
                  'Up',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: increaseNumber,
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),
                child: const Text(
                  'Down',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: decreaseNumber,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
