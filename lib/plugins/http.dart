import 'dart:convert';
import 'package:expense_tracker_app/config/baseURL.dart';
import 'package:expense_tracker_app/plugins/local_shared_preferences.dart';
import 'package:http/http.dart' as http;

Future GetRequest(url) async {
  Map<String, String> headers = {
    'Authorization': 'Bearer ${await getTokenFromLocalStorage()}'
  };
  return http
      .get(Uri.parse(BaseConfig().baseUrl + url), headers: headers);
}

Future PostRequest(url, body) async {
  Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8',
    'Authorization': 'Bearer ${await getTokenFromLocalStorage()}'
  };
  return await http.post(Uri.parse(BaseConfig().baseUrl + url),
      headers: headers,
      body: jsonEncode(body));
}
