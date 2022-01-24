import 'package:flutter/material.dart';
import '../models/transactions.dart';
import 'package:intl/intl.dart';

class ListBuilder extends StatelessWidget {
  final List<Transaction> transactions;

  ListBuilder({
    required this.transactions,
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
        return Container(
          // width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: .8, color: Colors.black38),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                // color: Theme.of(context).primaryColor,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  // border: Border.all(width: 1.2, color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "\$${transactions[index].amount.toStringAsFixed(2)}",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${transactions[index].title}",
                      style: TextStyle(color: Colors.black87, fontSize: 18),
                    ),
                    Text(
                      "${transactions[index].title}",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
      itemCount: transactions.length,
    );
  }
}
