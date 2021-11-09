import 'dart:ffi';

import 'package:geolocator/geolocator.dart';

class GeoLocationImplementation {
   pegarPosicao() async {
    Position position = await Geolocator.getCurrentPosition();

    print("$position <----------");
    //print(position.toJson());

    var x = position.toJson();

    
  }
}
