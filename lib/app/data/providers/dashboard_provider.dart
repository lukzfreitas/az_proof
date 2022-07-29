import 'package:az_proof/app/data/models/response_dashboard.dart';
import 'package:dio/dio.dart';
import '../preferences/user_preferences.dart';

class DashboardProvider {
  final request = Dio();

  final baseUrl = 'http://150.230.64.79:9393/proof';

  final prefs = UserPreferences();

  String _error = '';
  String get error => _error;

  _getOption() async {
    String token = await prefs.getToken();
    Options options = Options(
      followRedirects: false,
      validateStatus: (status) {
        return status! < 500;
      },
      headers: {
        'Content-Type': 'application/json',
        'Authorization': "Bearer " + token
      },
    );
    return options;
  }

  Future<ResponseDashboard?> getDashboard() async {
    try {
      Options opt = await _getOption();
      final response = await request.get(
        '$baseUrl/dashboard',
        options: opt,
      );

      if (response.statusCode == 200) {
        var data = response.data;
        ResponseDashboard value = ResponseDashboard.fromJson(data);
        return value;
      } else {
        _error = response.data['message'];
        return null;
      }
    } catch (e) {
      _error = e.toString();
      return null;
    }
  }
}
