import 'package:expense_tracker_app/firebase_options.dart';
import 'package:expense_tracker_app/hoc/home_layout.dart';
import 'package:expense_tracker_app/plugins/firebase_api.dart';
import 'package:expense_tracker_app/plugins/local_notifications.dart';
import 'package:expense_tracker_app/screens/landing/home_screen.dart';
import 'package:expense_tracker_app/screens/profile/profile_screen.dart';
import 'package:expense_tracker_app/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  // runApp(const MyApp());
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform
  // );

  // WidgetsFlutterBinding.ensureInitialized();
  // await LocalNotification.initialize();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // await FirebaseApi().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: HomeScreen()
      // home: ProfileScreen()
      // home : HomeLayout()
      home: SplashScreen()
      // initialRoute: '/',
      // routes: {
      //   '/': (context)=> HomeLayout(),
      //   // '/trending': (context)=> TrendingMovieScreen(),
      //   // '/categories': (context)=> CategoriesMovieScreen(),
      // }
    );
  }
}

