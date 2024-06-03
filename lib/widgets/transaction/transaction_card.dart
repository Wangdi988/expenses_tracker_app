import 'package:expense_tracker_app/models/transaction/transaction_model.dart';
import 'package:expense_tracker_app/models/transaction/transaction_repo.dart';
import 'package:expense_tracker_app/widgets/transaction/recent_transaction_card.dart';
import 'package:flutter/cupertino.dart';

class TransactionCard extends StatefulWidget{
  const TransactionCard({super.key});

  @override
  State<TransactionCard> createState() => _TransactionCardState();
}
class _TransactionCardState extends State<TransactionCard>{
  List<TransactionModel> transaction = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  Future<void> loadData() async{
    print("Print From Transaction");
    final res = await loadTransactionData();
    setState(() {
      transaction = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
       margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            margin: EdgeInsets.only(top: 16, bottom: 8),
            child: Text('Recent Transactions'),
          ),
          

          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                // children: [
                //   RecentTransactionCard(),
                //   // RecentTransactionCard(),
                //   // RecentTransactionCard(),
                //   // RecentTransactionCard(),
                //   // RecentTransactionCard(),
                // ],
                
                children: transaction.map((el)=>RecentTransactionCard(el)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}