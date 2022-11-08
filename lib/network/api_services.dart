import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:zartech_machie_test/network/exceptions.dart';

class NetworkApiService {
  dynamic responseJson;

  Future getApiResponse(url) async {
    try {
      // fetching data from the url
      final response = await http.get(Uri.parse(url));
      log('res : $response');
      // checking status codes.
      if (response.statusCode == 200 || response.statusCode == 201) {
        responseJson = jsonDecode(response.body);
        // log('$responseJson');
        log('Json decoded succesfully!!');
      }
      // debugPrint(response.body.toString());
    } on SocketException {
      throw FetchDataException(message: 'No internet connection');
    }
    log('All done , Data Returning');
    return responseJson;
  }
}
