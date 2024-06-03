import 'package:expense_tracker_app/models/account_balance/account_balance_model.dart';
import 'package:expense_tracker_app/models/account_balance/account_balance_repo.dart';
import 'package:expense_tracker_app/models/summary/summary_model.dart';
import 'package:expense_tracker_app/models/summary/summary_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SummaryCard extends StatefulWidget{
  const SummaryCard({super.key});

  @override
  State<SummaryCard> createState() => _SummaryCardState();
}

class _SummaryCardState extends State<SummaryCard> {
  SummaryModel summary = SummaryModel();
  AccountBalanceModel currentbalance = AccountBalanceModel();


  @override
  void initState() {
    // super.initState();
    // Call loadData without awaiting it directly
    loadData();
  }

  Future<void> loadData() async {
    print("Test>>>>>>===");
    // await loadSummaryData();
    SummaryModel resp = await loadSummaryData();
    setState(() {
      summary = resp;
    });

    // print('summary');
    // print(summary.expenses);
    AccountBalanceModel curbalresp = await loadCurrentBalance();
    setState(() {
      currentbalance = curbalresp;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(
        
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              color: Color.fromARGB(255, 239, 135, 30),
              height: MediaQuery.of(context).size.height * .20,
            ),
          ),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text('Current Balance',
                      style: TextStyle(color: Colors.white),
                      ),
                      Text('Rs. ' + currentbalance.openingBalance.toString(),
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 85,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.only(top: 25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0, // Adjust the width of the border lines as needed
                    ),

                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.69),
                          spreadRadius: 4,
                          blurRadius: 4,
                          offset: Offset(3.0, 3.0)
                          // spreadRadius: 4,
                          // blurStyle: BlurStyle.normal
                      )
                    ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 12),
                              child: Icon(Icons.arrow_downward,
                                color: Colors.green,
                              ),
                            ),
                            Container(
                              // alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                            
                                  Text('Total Income'),
                                  Container(
                                    child: Text('Nu. ' + summary.income.toString(),
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 12),
                              child: Icon(Icons.arrow_upward, 
                              color: Colors.red,
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Total Expenses'),
                                  Container(
                                    child: Text('Nu. '+ (summary.expenses).toString(), 
                                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),

                
              ],
            ),
          ),
        ],
      )
    );
  }
}