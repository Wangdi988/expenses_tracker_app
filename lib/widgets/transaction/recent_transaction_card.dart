import 'package:expense_tracker_app/models/transaction/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RecentTransactionCard extends StatelessWidget {

  TransactionModel transactions;
  RecentTransactionCard(this.transactions);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset('assets/images/avater.png',
                            height: 50, width: 50, fit: BoxFit.contain)
                    // child: CircleAvatar(
                    //     backgroundImage: NetworkImage(transactions.),
                    //   )
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Text(transactions.title, style: TextStyle(fontWeight: FontWeight.bold),),
                        Text(DateFormat.yMMMd()
                        .format(DateTime.parse(transactions.createdAt)), style: TextStyle(fontSize: 10),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Text(transactions.amount.toString(), style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
