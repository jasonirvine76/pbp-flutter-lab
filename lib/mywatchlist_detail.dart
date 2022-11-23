import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:pbp_flutter_lab/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:pbp_flutter_lab/drawer.dart';
import 'package:pbp_flutter_lab/mywatchlist_data.dart';
import 'package:intl/intl.dart';

class DetailPage extends StatefulWidget {
  final Mywatchlist watchListObject;
  const DetailPage({super.key, required this.watchListObject});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      drawer: DrawerWidget(),
      body: _showInfo(),
    );
  }

  Widget _showInfo() {
    String watchStatus = "";
    return Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: widget.watchListObject.fields.title,
                  style: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              RichText(
                text: TextSpan(
                    text: "Release Date: ",
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: DateFormat.yMMMMd('en_US').format(
                              widget.watchListObject.fields.releaseDate),
                          style: const TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          )),
                    ]),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              RichText(
                text: TextSpan(
                    text: "Rating: ",
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: "${widget.watchListObject.fields.rating}/5",
                          style: const TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          )),
                    ]),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              RichText(
                text: TextSpan(
                    text: "Status: ",
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: widget.watchListObject.fields.watched,
                          style: const TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          )),
                    ]),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              RichText(
                  text: TextSpan(
                text: "Review: ",
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )),
            ],
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(
                text: widget.watchListObject.fields.review,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              )),
            ],
          ),
          SizedBox(height: 330),
          Container(
            width: 1000,
            child: TextButton(
              onPressed: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const MyWatchListPage()),
                // );
                Navigator.pop(context);
              },
              child: Text(
                'Back',
                style: TextStyle(color: Color(0xffffffff)),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
          )
        ]));
  }
}
