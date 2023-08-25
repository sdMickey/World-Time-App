import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    // make the request
    Response response = await get(
        Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Kolkata'));
    Map data = jsonDecode(response.body);
    // print(data);

    // get properties from data
    String datetime = data['datetime'];
    // String hour_offset = data['utc_offset'].substring(1, 3);
    // String minute_offset = data['utc_offset'].substring(4, 6);
    // print(datetime);
    // print(hour_offset);
    // print(minute_offset);

    // create a DateTime object
    DateTime now = DateTime.parse(datetime.substring(0, 26));
    // now = now.add(Duration(
    //     hours: int.parse(hour_offset), minutes: int.parse(minute_offset)));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: const Text('loading screen'),
    );
  }
}
