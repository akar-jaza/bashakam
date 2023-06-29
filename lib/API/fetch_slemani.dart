import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>> fetchData() async {
  const url =
      'http://192.168.0.115/Konmra_project/endpoints/2020-2021/fetch_slemani.php';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    return jsonData as Map<String, dynamic>;
  } else {
    throw Exception('Failed to fetch data');
  }
}
