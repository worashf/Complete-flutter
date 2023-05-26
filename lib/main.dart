import 'package:flutter/material.dart';
import './widgets/user_transactions.dart';
import './widgets/new_transaction.dart';
import "./widgets/transaction_list.dart";

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Expense App"),
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                  child: Container(
                color: Colors.purple,
                width: double.infinity,
                child: const Text("Charts"),
              )),
              const UserTransactions()
            ],
          )),
        ));
  }
}
