import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTrasaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addNewTransaction;

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    if (double.tryParse(s) == null)
      return false;
    else
      return true;
  }

  NewTrasaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Title input
        TextField(
          decoration: InputDecoration(labelText: 'Title'),
          // onChanged: (val) {
          //   titleInput = val;
          //   print(val);
          // },
          controller: titleController,
        ),
        //Amount input
        TextField(
          decoration: InputDecoration(labelText: 'Amount'),
          // onChanged: (val) {
          //   amountInput = val;
          //   print(val);
          // },
          controller: amountController,
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: RaisedButton(
            child: Text('Submit'),
            onPressed: () {
              print(titleController.text);
              print(amountController.text);

              if (!isNumeric(amountController.text)) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => new CupertinoAlertDialog(
                    title: new Text("Alert"),
                    content: new Text("Aap kahi chutiya to nahi?"),
                    // actions: [
                    //   CupertinoDialogAction(
                    //       isDefaultAction: true, child: new Text("Close"))
                    // ],
                  ),
                );

                print('Cupertino called');
              } else
                addNewTransaction(
                    titleController.text, double.parse(amountController.text));
            },
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
