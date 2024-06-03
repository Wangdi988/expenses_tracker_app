import 'package:expense_tracker_app/widgets/transaction/recurring_transaction_card.dart';
import 'package:expense_tracker_app/widgets/transaction/transaction_card.dart';
import 'package:expense_tracker_app/widgets/transaction/transactions_card.dart';
import 'package:flutter/cupertino.dart';

class Transaction extends StatefulWidget{
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Container(
            //   child: Text("From recurring screen"),
            // )
            // RecurringTransactionCard()
            TransactionsCard()
          ],
        ),
      ),
    );
  }
}