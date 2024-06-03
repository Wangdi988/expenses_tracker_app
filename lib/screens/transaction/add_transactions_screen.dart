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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Container(
                      //   height: 200,
                      //   width: 150,
                      //   margin: EdgeInsets.only(bottom: 15),
                      //   child: Image.asset('assets/images/logo.png', 
                      //   height: 80, fit: BoxFit.contain
                      //   ),
                      // ),

                      // Container(
                      //   alignment: Alignment.centerLeft,
                      //   padding: EdgeInsets.symmetric(vertical: 16),
                      //   child: Column(
                      //     children: [
                      //       Text(
                      //         "Login",
                      //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      //         )
                      //     ],
                      //   ),
                      // ),

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
                        onEditingComplete: loginUser,
                        controller: _password,
                        // association of focus node with password
                        focusNode: passwordFocusNode,
                        autofocus: true,
                        obscureText: true,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Password"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                    ),

                    // Container(
                    //     alignment: Alignment.centerRight,
                    //     child: Column(
                    //       children: [
                    //         Text("Forgot Password?", style: TextStyle(fontWeight: FontWeight.bold))
                    //       ],
                    //     ),
                    //   ),

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