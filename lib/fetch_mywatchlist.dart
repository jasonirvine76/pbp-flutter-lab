import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:pbp_flutter_lab/mywatchlist.dart';

Future<List<Mywatchlist>> fetchMyWatchList() async {
  var url = Uri.parse('http://initugaspbp.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object ToDo
  List<Mywatchlist> listMyWatchList = [];
  for (var d in data) {
    if (d != null) {
      listMyWatchList.add(Mywatchlist.fromJson(d));
    }
  }
  return listMyWatchList;
}
