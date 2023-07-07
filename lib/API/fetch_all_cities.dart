// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>?> fetchData(int page, int size) async {
  final url =
      'https://dc0e-185-56-194-8.ngrok-free.app/konmra_project/endpoints/2020-2021/fetch_all_cities.php?page=$page&size=$size';

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
