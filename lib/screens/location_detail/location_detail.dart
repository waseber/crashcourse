import 'package:flutter/material.dart';
import 'text_section.dart';
import '../../widget/image_banner.dart';
import '../../models/location.dart';
import '../../widget/location_tile.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(_locationID);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(assetPath: location.imagePath),
          Padding(
            padding: 
              EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
              child: LocationTile(location: location),
            )
      ]..addAll(textSections(location))
      )
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}