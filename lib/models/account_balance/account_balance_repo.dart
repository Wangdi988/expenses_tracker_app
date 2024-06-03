import 'dart:convert';

import 'package:expense_tracker_app/models/account_balance/account_balance_model.dart';
import 'package:expense_tracker_app/plugins/http.dart';

Future<AccountBalanceModel> loadCurrentBalance() async {
  final res = await GetRequest('account/me');
  print("Pay/////////////////");
  print(jsonDecode(res.body)['data']);

  final data = jsonDecode(res.body)['data'][0];
  return AccountBalanceModel(
    openingBalance: data['openingBalance'],
  );
}