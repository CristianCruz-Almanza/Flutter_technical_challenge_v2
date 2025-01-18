import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://jsonplaceholder.typicode.com/";

  Future<dynamic> get(String endpoint) async {
    final response = await http.get(Uri.parse("$baseUrl/$endpoint"));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Error al obtener datos de la API");
    }
  }

  Future<dynamic> show(String endpoint, int id) async {
    final response = await http.get(
      Uri.parse("$baseUrl/$endpoint/$id"),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Error al enviar datos a la API");
    }
  }
}
