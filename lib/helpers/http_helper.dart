import 'package:http/http.dart' as http;

class MyHttpRequest {
  final String myUrl = '';
  Future getData(String endPoint) async {
    String url = myUrl + endPoint;
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
