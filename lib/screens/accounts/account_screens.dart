import 'package:expense_tracker_app/models/accounts/accounts_model.dart';
import 'package:expense_tracker_app/models/accounts/accounts_repo.dart';
import 'package:expense_tracker_app/widgets/account/typesof_accounts_card.dart';
import 'package:flutter/cupertino.dart';

class AccountScreens extends StatefulWidget{
  const AccountScreens({super.key});

  @override
  State<AccountScreens> createState() => _AccountScreensState();
}
class _AccountScreensState extends State<AccountScreens>{
  List<AccountsModel> accounts = [];
  @override
  void initState() {
    super.initState();
    loadAccountsData();
  }

  Future<void> loadAccountsData() async {
    final res = await loadAccounts();
    setState(() {
      accounts = res;
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
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                // children: [
                //   // RecentTransactionCard(),
                //   // RecentTransactionCard(),
                //   // RecentTransactionCard(),
                //   // RecentTransactionCard(),
                //   // RecentTransactionCard(),
                //   Container(
                //     child: TypesofAccountsCard(),
                //   )
                // ],
                
                children: accounts.map((el)=>TypesofAccountsCard(el)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}