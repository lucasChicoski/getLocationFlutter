import 'package:flutter/material.dart';
import 'package:geolocation/geo_location.dart';
import 'package:geolocator/geolocator.dart';

void main(List<String> args) {
  runApp(myMainApp());
}

class myMainApp extends StatefulWidget {
  const myMainApp({Key? key}) : super(key: key);

  @override
  State<myMainApp> createState() => _myMainAppState();
}

class _myMainAppState extends State<myMainApp> {
  GeoLocationImplementation _geoLocation = GeoLocationImplementation();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                _geoLocation.pegarPosicao();
                print(_geoLocation.pegarPosicao());
              },
              child: Text('Minha localização'),
            ),
          ),
        ),
      ),
    );
  }

  // pegarPosicao() async {
  //   Position position = await Geolocator.getCurrentPosition();
  //   print(position);
  // }
}
