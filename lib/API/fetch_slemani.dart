import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>?> fetchData(int page, int size) async {
  final url =
      'http://192.168.0.112/Konmra_project/endpoints/2020-2021/fetch_slemani.php?page=$page&size=$size';

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return jsonData as Map<String, dynamic>;
    } else {
      throw Exception('Failed to fetch data');
    }
  } catch (e) {
    print('Connection failed: $e');
    return null;
  }
}
