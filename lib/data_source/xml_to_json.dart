import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

class XmlToJson {
  Future<void> fetchXmlData() async {
    try {
      String url = 'https://openapi.foodsafetykorea.go.kr/api/sample/I2790/xml/1/5';
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        String xmlData = response.body;

        final xml2Json = Xml2Json();
        xml2Json.parse(xmlData);
        var jsonData = xml2Json.toParker();
        print(jsonData);
      } else {
        throw Exception('Failed to load  XML data');
      }
    } catch (e) {
      print('Error : $e');
    }
  }
}

void main() async {
  XmlToJson xmlToJson = XmlToJson();
  await xmlToJson.fetchXmlData();
}