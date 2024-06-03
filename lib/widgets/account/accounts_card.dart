import 'package:expense_tracker_app/models/accounts/accounts_model.dart';
import 'package:expense_tracker_app/models/accounts/accounts_repo.dart';
import 'package:expense_tracker_app/widgets/account/account_types_card.dart';
import 'package:flutter/cupertino.dart';


class AccountsCard extends StatefulWidget{
  const AccountsCard({super.key});

  @override
  State<AccountsCard> createState() => _AccountsCardState();
}

class _AccountsCardState extends State<AccountsCard>{
  
  List<AccountsModel> accounts = [];
  // AccountBalanceModel currentbalance = AccountBalanceModel();


  @override
  void initState() {
    super.initState();
    // Call loadData without awaiting it directly
    loadAccountsData();
  }

  Future<void> loadAccountsData() async {
    // print("Sangay===?????");
    // await loadSummaryData();
    // final  res = await loadAccounts();
    final res = await loadAccounts();

    print("accounts response start");
    // print(res);
    print("accounts response end");
    setState(() {
      accounts = res;
    });

    // print('summary');
    // print(summary.expenses);
    // AccountBalanceModel curbalresp = await loadCurrentBalance();
    // setState(() {
    //   currentbalance = curbalresp;
    // });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            margin: EdgeInsets.only(left: 16, top:16),
            child: Text('Current Balance'),
          ),
          

          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // children: [
                //   AccountTypesCard(),
                //   AccountTypesCard(),
                //   AccountTypesCard(),
                //   AccountTypesCard(),
                // ],
                children: accounts.map((el)=>AccountTypesCard(el)
                ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}