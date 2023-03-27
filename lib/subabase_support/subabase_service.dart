import 'dart:html';

import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  String _email = "";
  String _password = "";

  String getEmail() {
    return _email;
  }

  String getPassword() {
    return _password;
  }

  set setEmail(String email) {
    _email = email;
  }

  set setPassword(String password) {
    _password = password;
  }

  final SupabaseClient client;
  AuthService(this.client);

  bool signInUser(String email, String password) {
    if (getEmail().isEmpty || getPassword().isEmpty) {
      return false;
    }
    return true;
  }
}
