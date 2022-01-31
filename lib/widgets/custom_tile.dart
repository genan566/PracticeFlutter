import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final String amount;
  final String title;

  CustomTile(this.amount, this.title);

  @override
  Widget build(BuildContext context) {
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
              "\$${amount}",
              // "\$${transactions[index].amount.toStringAsFixed(2)}",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${title}",
                  // "${transactions[index].title}",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  "${title}",
                  // "${transactions[index].title}",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
