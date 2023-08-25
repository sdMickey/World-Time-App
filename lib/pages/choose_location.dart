import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    // simulate network request for a username
    await Future.delayed(const Duration(seconds: 3), () {
      // ignore: avoid_print
      print('yoshi');
    });

    // simulate network request to get bio of username
    Future.delayed(const Duration(seconds: 2), () {
      // ignore: avoid_print
      print('vegan, musician & egg collector');
    });

    // ignore: avoid_print
    print('statement');
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Text('choose location screen'),
    );
  }
}
