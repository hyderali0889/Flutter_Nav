// ignore_for_file: file_names, avoid_print

import 'package:http/http.dart';
import 'dart:convert';

class Network {
  final String url;
  Network(this.url);

  Future getData() async {
    Response res = await get(Uri.parse(url));

    if (res.statusCode == 200) {
      return json.decode(res.body);
    }else {
        print(res.statusCode);
     }
  }
}
