import 'package:expense_tracker_app/widgets/transaction/recurring_transaction_card.dart';
import 'package:flutter/cupertino.dart';

class RecurringTransaction extends StatefulWidget{
  const RecurringTransaction({super.key});

  @override
  State<RecurringTransaction> createState() => _RecurringTransactionState();
}

class _RecurringTransactionState extends State<RecurringTransaction> {
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
            RecurringTransactionCard()
          ],
        ),
      ),
    );
  }
}