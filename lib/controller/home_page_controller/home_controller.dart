import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

void launchWhatsAppChat() async {
    String url = 'https://wa.me/+923212358217';  

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      log('Could not launch $url') ;
    }
}