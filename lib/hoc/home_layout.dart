import 'package:expense_tracker_app/screens/accounts/account_screens.dart';
import 'package:expense_tracker_app/screens/landing/home_screen.dart';
import 'package:expense_tracker_app/screens/profile/profile_screen.dart';
import 'package:expense_tracker_app/screens/transaction/add_transactions_screen.dart';
import 'package:expense_tracker_app/screens/transaction/recurring_transaction.dart';
import 'package:expense_tracker_app/screens/transaction/transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout>{
  int _selectedIndex = 0;
  List<String> titles = [
    'Home',
    'Accounts',
    // 'Recurring Transaction',  No need
    'Transactions', 
    // 'Profile' no need
    ];
  List<Widget> screens = [
                  HomeScreen(),
                  // HomeScreen(),
                  // HomeScreen(),
                  // RecurringTransaction(),
                  AccountScreens(),
                  Transaction(),
                ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(titles[_selectedIndex]),
      // ),

      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Image.asset('assets/images/logo.png',
              //               height: 40, width: 100, fit: BoxFit.contain),
              (_selectedIndex == 0)
                ? Image.asset('assets/images/logo.png',
                            height: 40, width: 100, fit: BoxFit.contain)
                : Text(titles[_selectedIndex]),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // assets/images/avater.png
                    const Icon(Icons.search),

                    Image.asset('assets/images/avater.png',
                            height: 40, width: 50, fit: BoxFit.contain),

                    
                  ],

                  
                ),
              ),

            ],
          ),
          backgroundColor: Colors.orangeAccent,
      ),

      body: SingleChildScrollView(
        
        child: screens[_selectedIndex],
      ),

      

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (val){
           setState(() {
             _selectedIndex = val;
           });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
          // BottomNavigationBarItem(icon: Icon(Icons.star),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.list),label: ''),
          // BottomNavigationBarItem(icon: Icon(Icons.article_outlined),label: ''), // not need
          BottomNavigationBarItem(icon: Icon(Icons.access_time),label: ''),
          // BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: ''),
        ],
      ),
    );
  }
}