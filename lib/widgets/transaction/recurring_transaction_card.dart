import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecurringTransactionCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 12),
                    child: Image.asset('assets/images/avater.png',
                            height: 50, width: 50, fit: BoxFit.contain)
                    ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 3),
                          child: Text('Fimaily Dinner',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),

                        Text('12 Jun, 2024')
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
                    child: Text('Nu. 1,200'),
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}