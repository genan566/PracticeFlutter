import 'package:flutter/material.dart';
import 'package:pratice/widgets/custom_tile.dart';
import '../models/transactions.dart';
import 'package:intl/intl.dart';

class ListBuilder extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteX;

  ListBuilder({
    required this.transactions,
    required this.deleteX,
  });

  @override
  Widget build(BuildContext context) {
    // return Text("data");

    // return ListView(
    //   children: transactions.map((tx) {
    //     return Container(
    //       // width: double.infinity,
    //       margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    //       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    //       decoration: BoxDecoration(
    //         color: Colors.white,
    //         border: Border.all(width: .8, color: Colors.black38),
    //         borderRadius: BorderRadius.circular(10),
    //         boxShadow: [
    //           BoxShadow(
    //             color: Colors.grey.withOpacity(0.5),
    //             spreadRadius: 5,
    //             blurRadius: 7,
    //             offset: Offset(0, 3), // changes position of shadow
    //           ),
    //         ],
    //       ),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: <Widget>[
    //           Container(
    //             // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    //             padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    //             decoration: BoxDecoration(
    //               border: Border.all(width: 1.2, color: Theme.of(context).primaryColor),
    //               borderRadius: BorderRadius.circular(10),
    //             ),
    //             child: Text(
    //               "Good morning",
    //               style: TextStyle(color: Colors.black87),
    //             ),
    //           ),
    //           Container(
    //             margin: EdgeInsets.symmetric(horizontal: 10),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   "Good morning",
    //                   style: TextStyle(color: Colors.black87, fontSize: 18),
    //                 ),
    //                 Text(
    //                   "Good morning",
    //                   style: TextStyle(color: Colors.grey, fontSize: 12),
    //                 ),
    //               ],
    //             ),
    //           )
    //         ],
    //       ),
    //     );
    //   }).toList(),
    // );

    return ListView.builder(
      itemBuilder: (ctx, index) {
        return Card(
          elevation: 5,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 6),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child:
                    FittedBox(child: Text('\$${transactions[index].amount}')),
              ),
            ),
            title: Text(
              transactions[index].title,
              style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: Text(
              DateFormat.yMMMd().format(transactions[index].date),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              color: Theme.of(context).errorColor,
              onPressed: () => deleteX(transactions[index].id),
            ),
          ),
        );
        // return CustomTile(transactions[index].amount.toStringAsFixed(2),
        //     transactions[index].title);
      },
      itemCount: transactions.length,
    );
  }
}
