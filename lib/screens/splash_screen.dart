import 'package:expense_tracker_app/hoc/home_layout.dart';
import 'package:expense_tracker_app/plugins/local_shared_preferences.dart';
import 'package:expense_tracker_app/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  @override
  // void initState(){
  //   checkIfUserIsLoggedIn();
  // }

  void initState() {
    super.initState();
    // Schedule the navigation to happen after the initial build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkIfUserIsLoggedIn();
    });
  }

  Future<void> checkIfUserIsLoggedIn() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = await getTokenFromLocalStorage();

    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomeLayout()));
    if(token != ''){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomeLayout()));
    }else{
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>LoginScreen()));
      }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to the ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            Text("Expense tracker", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}