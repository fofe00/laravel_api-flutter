import 'package:http/http.dart';

class MyHttpRequest {
  //final String myUrl = 'http://10.0.2.2:8000/api/';
  final String myUrl = 'http://192.168.8.101:8000/api/';
  Future getData(String endPoint) async {
    String url = myUrl + endPoint;
    print(url);
    final response = await get(url);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      //throw Exception('Failed to load Data');
      print(response.statusCode);
    }
  }

  Future postData(String endPoint, data) async {
    String url = myUrl + endPoint;
    //print(url);
    final response = await post(url, body: data);
    if (response.statusCode == 200) {
      //print('oki fofe');
      return response.body;
    } else {
      //throw Exception('Failed to load Data');
      print(response.statusCode);
      print("Failed to load Data//");
    }
  }
}
