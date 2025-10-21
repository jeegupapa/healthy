import 'dart:convert';
import 'package:http/http.dart' as http;


class ApiClient {
final String baseUrl;
final String token;
ApiClient(this.baseUrl, this.token);


Future<List<dynamic>> getTodaySchedules(String userId) async {
final r = await http.get(Uri.parse('$baseUrl/schedules?userId=$userId'), headers: {
'Authorization': 'Bearer $token',
});
return jsonDecode(r.body) as List<dynamic>;
}
}