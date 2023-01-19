import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';

class AirBloc {
  final _airSubject = BehaviorSubject();

  void getAirQuality() async {
    var response =
        await http.get(Uri.parse('http://api.airvisual.com/v2/nearest_city?key=83843a82-a898-4a18-8879-4fc5ae847189'));
    print(jsonDecode(response.body));
    // setState(() {
    //   currentAirQuality = jsonDecode(response.body)['data']['current']['pollution']['aqius'];
    //   currentCity = jsonDecode(response.body)['data']['city'];
    //   currentCountry = jsonDecode(response.body)['data']['country'];
    // });
  }

  AirBloc() {
    getAirQuality();
  }
}
