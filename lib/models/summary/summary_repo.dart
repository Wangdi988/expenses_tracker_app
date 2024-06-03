import 'dart:convert';
import 'package:expense_tracker_app/models/summary/summary_model.dart';
import 'package:expense_tracker_app/plugins/http.dart';


Future<SummaryModel> loadSummaryData() async {
  final res = await GetRequest('summary');
  print(jsonDecode(res.body));

  final data = jsonDecode(res.body)['data'];
  return SummaryModel(
  expenses: data['expenses'],
  income: data['income'],
  openingBalance: data['openingBalance'],
  maxExpense: data['maxExpense'],
  totalTransactionsThisMonth: data['totalTransactionsThisMonth'],
);
}



// Future<SummaryModel> loadSummaryData() async{
//   final res = await GetRequest('summary');
//   print(jsonDecode(res.body));
//   final temp = jsonDecode(res.body)['data'];
  // return SummaryModel(
  //   expenses: temp['expenses'],
  //   income: temp['income'],
  //   openingBalance: temp['openingBalance'],
  //   maxExpense: temp['maxExpense'],
  //   totalTransactionsThisMonth: temp['totalTransactionsThisMonth'],
  // );
// }