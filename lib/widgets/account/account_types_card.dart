import 'package:expense_tracker_app/models/accounts/accounts_model.dart';
import 'package:flutter/material.dart';


class AccountTypesCard extends StatelessWidget {
  AccountsModel accounts;
  AccountTypesCard(this.accounts);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 140,
        // padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(left: 16, top: 8, bottom: 16),
        width: 260,
        decoration: BoxDecoration(
            color: Colors.white,
            // borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.black,
              width: 1.0,
            ),

            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.69),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(3.0, 4.0)
                  // spreadRadius: 4,
                  // blurStyle: BlurStyle.normal
              )
            ]
          ),

          child: Container(
            margin: EdgeInsets.all(14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(accounts.title),
                      // Image.asset('assets/images/avater.png',
                      //       height: 30, width: 30, fit: BoxFit.contain),

                      CircleAvatar(
                        backgroundImage: NetworkImage(accounts.img),
                      )
                    ],
                  ),
                ),

                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nu. " + accounts.openingBalance.toString(), style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Nu. 2,000 this month", style: TextStyle(fontSize: 10),)
                    ],
                  ),
                )
              ],
            ),
          ),
        
      )
    );
  }
}
