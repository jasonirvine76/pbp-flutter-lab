import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:pbp_flutter_lab/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:pbp_flutter_lab/drawer.dart';
import 'package:pbp_flutter_lab/mywatchlist_detail.dart';
import 'package:pbp_flutter_lab/fetch_mywatchlist.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({Key? key}) : super(key: key);

  @override
  _MyWatchListPageState createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
  bool _isInit = true;

  changeIsInit() {
    _isInit = false;
    return fetchMyWatchList();
  }

  @override
  Widget build(BuildContext context) {
    bool newValue = false;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text("My Watch List"),
        ),
        drawer: DrawerWidget(),
        body: FutureBuilder(
            future: _isInit ? changeIsInit() : null,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watch list :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              if (snapshot.data![index].fields.watched ==
                                  "watched") ...[
                                BoxShadow(color: Colors.blue, blurRadius: 2.0)
                              ] else ...[
                                BoxShadow(color: Colors.red, blurRadius: 2.0)
                              ],
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${snapshot.data![index].fields.title}",
                              style: const TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Checkbox(
                              value: snapshot.data![index].fields.boolWatched,
                              onChanged: (newValue) {
                                setState(() {
                                  if (newValue! == true) {
                                    snapshot.data![index].fields.watched =
                                        "watched";
                                  } else {
                                    snapshot.data![index].fields.watched =
                                        "not watched";
                                  }
                                  snapshot.data![index].fields.boolWatched =
                                      newValue;
                                });
                              },
                            ),
                            // const SizedBox(height: 10),
                          ],
                        ),
                      ),
                      onTap: () {
                        // Route menu ke halaman form
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage(
                                  watchListObject: snapshot.data![index])),
                        );
                      },
                    ),
                  );
                }
              }
            }));
  }
}
