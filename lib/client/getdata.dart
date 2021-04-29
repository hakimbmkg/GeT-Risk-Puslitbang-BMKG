import 'dart:convert';
import 'package:xml2json/xml2json.dart';
import 'package:http/http.dart' as http;

// getDataXML
getData() async {
  Xml2Json xml2json = new Xml2Json();
  try {
    var baseUrl = Uri(
        host:
            'https://bmkg-content-inatews.storage.googleapis.com/warninggeof.xml');
    http.Response response = await http.get(baseUrl);
    xml2json.parse(response.body);
    var jsondata = xml2json.toGData();
    var data = jsonDecode(jsondata)['alert']['info'];

    print('test - $data');
  } catch (e) {
    print('errror ...' + e);
  }
}
