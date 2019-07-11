import 'package:flutter/material.dart';
import 'text_section.dart';
import 'image_banner.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("assets/images/james-swing.JPG"),
          TextSection("summary1", "asdfasd"),
          TextSection("summary2", "asdkjhf;asldf;alkdsjf;ldk;alskdjv;aldskfj;ad"),
          TextSection("summary3", "09uoiasdonourgosdgallhlk"),
      ]
      )
    );
  }
}