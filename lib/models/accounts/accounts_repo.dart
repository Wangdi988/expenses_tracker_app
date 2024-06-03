import 'dart:convert';

import 'package:expense_tracker_app/models/accounts/accounts_model.dart';
import 'package:expense_tracker_app/plugins/http.dart';

Future<List<AccountsModel>> loadAccounts() async{
    final res = await GetRequest('account');

    print('Accounts????//// start');
    print(jsonDecode(res.body)['data']);
    List<AccountsModel> tempAccounts = [];

    print((res.body)['data']);

    print('Accounts????//// ends>>');

    for(final data in jsonDecode(res.body)['data']){
      tempAccounts.add(AccountsModel(
          id: data['id'],
          title: data['title'],
          img: data['img'],
          openingBalance: data['openingBalance']
      ));
    }

    print('Accounts????//// end');
    print(tempAccounts);
    return tempAccounts;
  }