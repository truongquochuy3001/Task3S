import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

import 'package:flutter_application_1/uis/login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../blocs/auth_blocs.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isLoading = false;
  String? checkEmailFormat;
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  Auth login = Auth();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: isLoading
          ? CircularProgressIndicator()
          : Scaffold(
              body: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 36,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 36.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.w, right: 16.w),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2.w),
                      ),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          email = value;
                          checkEmailFormat = value;
                          bool isValid = EmailValidator.validate(
                              checkEmailFormat.toString());

                          if (!isValid) return 'this is not email';

                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.w, right: 16.w),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                      ),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          password = value;
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                // if (await login.checkDuplicatedEmail(email!)) {
                                //   print("email bi trung");
                                // }
                                // If the form is valid, display a snackbar. In the real world,
                                // you'd often call a server or save the information in a database.
                                if (await login.checkRegister(
                                    email!, password!)) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ),
                                  );
                                }
                                ;
                              }
                            },
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w, right: 16.w),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "BACK",
                              style: TextStyle(
                                  fontSize: 15.sp, fontWeight: FontWeight.w900),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
