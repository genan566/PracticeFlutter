import 'package:flutter/material.dart';
import '../models/transactions.dart';
import './ListBuilder.dart';

class DynamiqueList extends StatelessWidget {
  final List<Transaction> userTransaction;
  final Function deleteX;

  DynamiqueList(this.userTransaction, @required this.deleteX);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      child: userTransaction.isEmpty
          ? Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "No transactions added yet",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Container(
                  height: 200,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Image.asset(
                    "assets/images/waiting.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListBuilder(
              transactions: userTransaction,
              deleteX: deleteX,
            ),
    );
  }
}
