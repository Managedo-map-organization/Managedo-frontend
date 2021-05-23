import 'dart:convert';
import 'package:http/http.dart' as http;

class RestService {
  // Change the baseUrl based on your laptop's IP address
  static const String baseUrl = 'http://192.168.1.2:3000';

  String get url => baseUrl;

  // get request
  Future get(String endpoint) async {
    final response = await http.get('$baseUrl/$endpoint');
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    throw response;
  }

  // post request
  Future post(String endpoint, {dynamic data}) async {
    final response = await http.post('$baseUrl/$endpoint',
        headers: {'Content-Type': 'application/json'}, body: jsonEncode(data));

    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    }
    throw response;
  }

  // patch request
  Future patch(String endpoint, {dynamic data}) async {
    final response = await http.patch('$baseUrl/$endpoint',
        headers: {'Content-Type': 'application/json'}, body: jsonEncode(data));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    throw response;
  }

  // delete request
  Future delete(String endpoint) async {
    final response = await http.delete('$baseUrl/$endpoint');

    if (response.statusCode == 200) {
      return;
    }
    throw response;
  }
}
