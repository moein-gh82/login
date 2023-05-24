import 'dart:js';

import 'package:flutter/material.dart';
import 'package:loginpage/main.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:http/http.dart' as http;

Future<bool> sendLoginRequest(String username, String password) async {
  var url = Uri.parse('https://172.16.130:9999/user/login');
  var response = await http.post(url, body: {
    'params':
        '<params><username>$username</username><password>$password</password></params>',
  });

  if (response.statusCode == 200) {
    return isSuccess = true;
  } else {
    return isSuccess = false;
    // Login failed, handle the error
  }
}
