import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProfileCard extends StatelessWidget {

  // TransactionModel transactions;
  // ProfileCard(this.transactions);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CircleAvatar()

            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Image.asset('assets/images/avater.png',
                        height: 150, width: 150, fit: BoxFit.contain
                      ),

            ),
            
            // CircleAvatar(
            //             backgroundImage: Image.asset('assets/images/avater.png',
            //             height: 50, width: 50, fit: BoxFit.contain
            //           ),
            //           ),

            Container(
              child: Column(
                children: [
                  Text(
                    "Admin",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  // title
                  Text(
                    "Software Developer",
                    style: TextStyle(fontSize: 14),
                  ), 

                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(Icons.calendar_month),
                        ),
                        Container(
                          child: Text('Jan 12th, 2024'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      
                        Container(
                          child: Icon(Icons.location_on),
                        ),
                        Container(
                          child: Text('Thimphu, Thimphu'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      
                        Container(
                          child: Text('Total Balance')
                        ),
                        Container(
                          child: Text(
                            'Nu, 40,000',
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      
                        Container(
                          child: Text('Total Expenses')
                        ),
                        Container(
                          child: Text(
                            'Nu. 20,000',
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                        )
                      ],
                    ),
                  ),


                ],
              ),
            )
            // name
            
          ],
        ),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Container(
        //       child: Row(
        //         children: [
        //           Container(
        //             child: Image.asset('assets/images/avater.png',
        //                     height: 50, width: 50, fit: BoxFit.contain)
        //             // child: CircleAvatar(
        //             //     backgroundImage: NetworkImage(transactions.),
        //             //   )
        //           ),
        //           Container(
        //             margin: EdgeInsets.only(left: 12),
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
                        
        //                 Text(transactions.title, style: TextStyle(fontWeight: FontWeight.bold),),
        //                 Text(DateFormat.yMMMd()
        //                 .format(DateTime.parse(transactions.createdAt)), style: TextStyle(fontSize: 10),)
        //               ],
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     Container(
        //       child: Text(transactions.amount.toString(), style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
        //     )
        //   ],
        // ),
      ),
    );
  }
}
