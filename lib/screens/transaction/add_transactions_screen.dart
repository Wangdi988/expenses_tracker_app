import 'package:expense_tracker_app/hoc/home_layout.dart';
import 'package:expense_tracker_app/models/auth/auth_model.dart';
import 'package:expense_tracker_app/models/auth/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddTransactionsScreen extends StatefulWidget{
  const AddTransactionsScreen({super.key});

  @override
  State<AddTransactionsScreen> createState() => _AddTransactionsScreenState();
}

class _AddTransactionsScreenState extends State<AddTransactionsScreen>{

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _date = TextEditingController();
  TextEditingController _amount = TextEditingController();
  String? _selectedExpense;
  FocusNode passwordFocusNode = FocusNode();
  bool loading = false;

  final _formKey = GlobalKey<FormState>();

  Future<void> loginUser() async {
    print(_username.text);
    try {
     if(_formKey.currentState!.validate()){
      print(_username.text);

       setState(() {
         loading = true;
       });
       final res = await AuthRepo().loginWithEmailAndPassword(
           AuthModel(username: _username.text, password: _password.text));

       Navigator.of(context)
           .pushReplacement(MaterialPageRoute(builder: (_) => HomeLayout()));
     }
    } catch (e) {
      print('test>>>');
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }

    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text("Add Transaction"),
      ),

      body: Form(
          key: _formKey,
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 15),
            margin: EdgeInsets.only(top:16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      TextFormField(
                        autofocus: true,
                        controller: _username,
                        onEditingComplete: () {
                          passwordFocusNode.requestFocus();
                        },

                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: 'Statement'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your statement';
                          }
                          return null;
                        },
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: TextFormField(
                        autofocus: true,
                        controller: _date,
                        onEditingComplete: () {
                          passwordFocusNode.requestFocus();
                        },

                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: 'Date'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Date';
                            }
                            return null;
                          },
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.symmetric(vertical: 16),
                      //   child: TextFormField(
                      //   autofocus: true,
                      //   controller: _username,
                      //   onEditingComplete: () {
                      //     passwordFocusNode.requestFocus();
                      //   },

                      //     decoration: InputDecoration(
                      //         border: OutlineInputBorder(), labelText: 'Account'),
                      //     validator: (value) {
                      //       if (value == null || value.isEmpty) {
                      //         return 'Please enter your Account';
                      //       }
                      //       return null;
                      //     },
                      //   ),
                      // ),

                      // DropdownButtonFormField<String>(
                      //   items: <String>['Fimaily Dinner', 'Shopping', 'Travelling', 'Other'].map((String value) {
                      //     return DropdownMenuItem<String>(
                      //       value: value,
                      //       child: Text(value),
                      //     );
                      //   }).toList(),
                      //   onChanged: (value) {

                      //   },
                      // ),

                      // SizedBox(height: 16),
                        // DropdownButtonFormField<String>(
                        //   value: _selectedExpense,
                        //   decoration: InputDecoration(
                        //     border: OutlineInputBorder(),
                        //     labelText: 'Expenses',
                        //   ),
                        //   items: <String>['Rent', 'Utilities', 'Food', 'Transportation', 'Entertainment']
                        //       .map<DropdownMenuItem<String>>((String value) {
                        //     return DropdownMenuItem<String>(
                        //       value: value,
                        //       child: Text(value),
                        //     );
                        //   }).toList(),
                        //   onChanged: (String? newValue) {
                        //     setState(() {
                        //       _selectedExpense = newValue;
                        //     });
                        //   },
                        //   validator: (value) {
                        //     if (value == null || value.isEmpty) {
                        //       return 'Please select an expense';
                        //     }
                        //     return null;
                        //   },
                        // ),

                      SizedBox(height: 16),
                      DropdownButtonFormField<String>(
                        value: _selectedExpense,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Account',
                        ),
                        items: <String>['Rent', 'Utilities', 'Food', 'Transportation', 'Entertainment']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedExpense = newValue;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select an account';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 16),
                      DropdownButtonFormField<String>(
                        value: _selectedExpense,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Expense',
                        ),
                        items: <String>['Rent', 'Utilities', 'Food', 'Transportation', 'Entertainment']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedExpense = newValue;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select an expense';
                          }
                          return null;
                        },
                      ),
                      
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: TextFormField(
                        autofocus: true,
                        controller: _amount,
                        onEditingComplete: () {
                          passwordFocusNode.requestFocus();
                        },

                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: 'Ampunt in Nu'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Expenses';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: TextFormField(
                        autofocus: true,
                        controller: _username,
                        onEditingComplete: () {
                          passwordFocusNode.requestFocus();
                        },

                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: 'Images'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Images';
                            }
                            return null;
                          },
                        ),
                      ),

                    Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        
                        onPressed: loading ? null : loginUser,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text('Confirm'),
                                margin: EdgeInsets.symmetric(horizontal: 12),
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   width: double.infinity,
                    //   height: 48,
                    //   margin: EdgeInsets.only(top: 8),
                    //   child: TextButton(
                    //     style: TextButton.styleFrom(
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(8),
                    //         ),
                    //         foregroundColor: Colors.redAccent),
                    //     onPressed: () {},
                    //     child: Text('Sign up'),
                    //   ),
                    // ),
                  ],
                ),
              )
                    ],
                  )
                )
              ],
            ),
          )
        ),
        
    );
  }
}