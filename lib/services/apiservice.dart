import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  static const String _serverIP = '127.0.0.1';
  static const String baseUrl = 'http://$_serverIP:8080/api/v1';
  static String get serverIP => _serverIP;
  static String currentIP = serverIP;

  // Ajoutez cette méthode pour obtenir l'adresse IP

  static Future<String?> getAuthToken() async {
    print("Fetching auth token from SharedPreferences...");
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? token = pref.getString('token');
    print("Auth token: $token");
    return token ?? '';
  }

  static T _handleResponse<T>(
      http.Response response, T Function(dynamic) modelFromJson) {
    print("Handling response with status code: ${response.statusCode}");
    if (response.statusCode == 200) {
      T model = modelFromJson(jsonDecode(response.body));
      print("Parsed model from response: $model");
      return model;
    } else {
      print("Request failed with status: ${response.statusCode}");
      throw Exception('Request failed with status: ${response.statusCode}');
    }
  }

//reponse de d'envoie

  static Future<http.Response> _postData(
      String endpoint, Map<String, dynamic> data,
      {bool requireToken = true}) async {
    String? authToken;
    if (requireToken) {
      authToken = await getAuthToken();
    }

    final headers = {
      'Content-Type': 'application/json',
      if (authToken != null) 'Authorization': 'Bearer $authToken',
    };
    print("Posting data to $endpoint with headers: $headers and data: $data");
    final response = await http.post(
      Uri.parse(baseUrl + endpoint),
      headers: headers,
      body: jsonEncode(data),
    );
    print("Received response: ${response.body}");
    return response;
  }

// affichage des données de publication
  static Future<http.Response> _indexData(String endpoint) async {
    final authToken = await getAuthToken();
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    print("Fetching data from $endpoint with headers: $headers");
    final response = await http.get(
      Uri.parse(baseUrl + endpoint),
      headers: headers,
    );
    print("Received response: ${response.body}");
    return response;
  }

//update publication
  static Future<http.Response> _updateData(
      String endpoint, Map<String, dynamic> data) async {
    final authToken = await getAuthToken();
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    print("Updating data at $endpoint with headers: $headers and data: $data");
    final response = await http.put(
      Uri.parse(baseUrl + endpoint),
      headers: headers,
      body: jsonEncode(data),
    );
    print("Received response: ${response.body}");
    return response;
  }

//post publication

  //méthode patch
  static Future<http.Response> _patchData(
      String endpoint, Map<String, dynamic> data) async {
    final authToken = await getAuthToken();
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    print("Patching data at $endpoint with headers: $headers and data: $data");
    final response = await http.patch(
      Uri.parse(baseUrl + endpoint),
      headers: headers,
      body: jsonEncode(data),
    );
    print("Received response: ${response.body}");
    return response;
  }

  //Pour supprimer les données
  static Future<http.Response> _deleteData(String endpoint) async {
    final authToken = await getAuthToken();
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };

    final response = await http.delete(
      Uri.parse(baseUrl + endpoint),
      headers: headers,
    );

    return response;
  }

  //fonction pour gérer l'url des images

  //-------------- AUTHENTICATION --------------
  static Future<http.Response> login(Map<String, dynamic> data) {
    return _postData('auth/login', data);
  }

  //recuperer l'id de l'utilisateur
  static Future<int> getUserId() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt('userId') ?? 0;
  }

//-------------- s'enregeistrer dans la base de données
  static Future<http.Response> register(Map<String, dynamic> data) {
    return _postData('auth/register', data, requireToken: false);
  }

  ///mise à  jour  vendredi 11

  //MISE A JOUR

// ----------------- se deconnecter
  static Future<void> logout() async {
    final response = await _postData('/logout', {});
    if (response.statusCode == 200) {
      SharedPreferences pref = await SharedPreferences.getInstance();
      await pref.remove('token');
      await pref.remove( 'userId'); // Supposant que vous stockez également l'ID de l'utilisateur
    }
    // Vous pouvez également gérer d'autres codes de statut ou erreurs ici si nécessaire
  }

//----------Avoir les details de l'utilisateur
  static Future<http.Response> getUser() {
    return _indexData('/user');
  }

//----------Modifier les informations de l'utilisateur
  static Future<http.Response> updateUser(Map<String, dynamic> data) {
    return _updateData('/user', data);
  }

}
