import 'package:flutter/material.dart';
import 'transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      't1',
      'New Shoes',
      69.99,
      DateTime.now(),
    ),
    Transaction("t2", "Second transaction", 56.4, DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
              child: Container(
            color: Colors.blue,
            width: double.infinity,
            child: const Text("Charts"),
          )),
          Column(
            children: [
              ...transactions.map((transaction) {
                return Card(
                    elevation: 6,
                    child: Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.purple,
                              width: 2,
                            )),
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "\$ ${transaction.amount}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.purple),
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transaction.title,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              transaction.date.toString(),
                              style: TextStyle(color: Colors.blueGrey[600]),
                            )
                          ],
                        )
                      ],
                    ));
              }).toList()
            ],
          )
        ],
      )),
    );
  }
}
