import 'package:http/http.dart' as http;

const baseUrl =
    'http://yili-music-1479251-1308655658.ap-shanghai.run.tcloudbase.com';
Future<String> sayHello() async {
  final response = await http.get(Uri.parse(baseUrl + '/hello'));
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception(response.body);
  }
}
