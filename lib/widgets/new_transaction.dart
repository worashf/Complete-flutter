import "package:flutter/material.dart";

class NewTransaction extends StatelessWidget {
  final Function addTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTransaction);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            decoration: const InputDecoration(labelText: "Title"),
            controller: titleController,
          ),
          TextField(
            decoration: const InputDecoration(labelText: "Amount"),
            controller: amountController,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.purple),
            onPressed: () {
              addTransaction(
                  titleController.text, double.parse(amountController.text));
            },
            child: const Text(
              "Add Transaction",
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
    );
  }
}
