import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();

  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: firstController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'First Number'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
                controller: secondController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Second Number'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    double a = double.parse(firstController.text);
                    double b = double.parse(secondController.text);

                    setState(() {
                      result = a + b;

                    });

                  },
                  child: Text('Add'),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    double a = double.parse(firstController.text);
                    double b = double.parse(secondController.text);

                    setState(() {
                      result = a - b;

                    });

                  },
                  child: Text('Subtract'),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    double a = double.parse(firstController.text);
                    double b = double.parse(secondController.text);

                    setState(() {
                      result = a / b;

                    });

                  },
                  child: Text('Divide'),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    double a = double.parse(firstController.text);
                    double b = double.parse(secondController.text);

                    setState(() {
                      result = a * b;

                    });

                  },
                  child: Text('multiple'),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                'Result : $result',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
