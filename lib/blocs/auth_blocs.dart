// ignore_for_file: deprecated_member_use

import 'package:supabase_flutter/supabase_flutter.dart';

import '../subabase_support/subabase_function.dart';

class Auth {
  String? _email;
  String? _password;

  set setEmail(String email) {
    email = email;
  }

  set setPassword(String password) {
    password = password;
  }

  String get getEmail {
    return _email!;
  }

  String get getPassword {
    return _password!;
  }

  Future<bool> checkLogin(String email, String password) async {
    final data1 = await Supabase.instance.client
        .from('user')
        .select(
          'email,pass',
        )
        .match({'email': email, 'pass': password}).execute();
    print("ok");
    print(data1.data);

    if (data1.data.length == 1) return true;

    return false;
  }

  Future<bool> checkDuplicatedEmail(String email) async {
    final data1 = await Supabase.instance.client
        .from('user')
        .select(
          'email',
        )
        .match({'email': email}).execute();
    print("ok");
    print(data1.data);

    if (data1.data.length == 1) return true;

    return false;
  }

  Future<bool> checkRegister(String email, String password) async {
    final response =
        await supabase.from('user').insert({'email': email, 'pass': password});
    return true;
  }
}
