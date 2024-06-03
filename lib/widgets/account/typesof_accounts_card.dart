import 'dart:js_interop_unsafe';

import 'package:expense_tracker_app/models/accounts/accounts_model.dart';
import 'package:expense_tracker_app/models/transaction/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TypesofAccountsCard extends StatelessWidget {

  AccountsModel accounts;
  TypesofAccountsCard(this.accounts);
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
                    child: Image.asset('assets/images/accounts.jpg',
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
                        
                        Text(accounts.title, style: TextStyle(fontWeight: FontWeight.bold),),
                        Text( 'Rs. ' +accounts.openingBalance.toString(), style: TextStyle(fontSize: 17)),

                        
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Icon(Icons.edit,
                       color: Colors.blue,
                      //  size: 16,
                      ),

                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Icon(Icons.delete,
                          color: Color.fromRGBO(243, 65, 33, 1),)
                  ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
