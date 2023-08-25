import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  late String location; // location name for the ui
  late String time; // time in that location
  late String flag; // url to asset flag icon
  late String url; // the location url for api endpoint

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    // make the request
    Response response =
        await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
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
    // print(now);

    // set time property
    time = now.toString();
  }
}
