import 'package:expense_tracker_app/widgets/account/accounts_card.dart';
import 'package:expense_tracker_app/widgets/home/summary_card.dart';
import 'package:expense_tracker_app/widgets/transaction/transaction_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
         SummaryCard(),
         AccountsCard(),
         TransactionCard(),
        ],
      ),
      
    );
  }
}