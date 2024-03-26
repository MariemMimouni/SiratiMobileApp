import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Menu/drawer.widget.dart';
class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: MyDrawer(),
        appBar: AppBar(
          elevation: 10,
          title: Text('سيرتي'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 45,
              margin: EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () { 
                  Uri phone = Uri.parse('tel:+21629782323');
                  launchUrl(phone);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.phone_forwarded),
                  SizedBox(width: 8),
                  Text('Phone Call')],
                ),
              ),
            ),
            Container(
              height: 45,
              margin: EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  Uri whatsapp = Uri.parse("https://wa.me/21629782323?text=Hi%20Mariem.%0AJust%20wanted%20to%20say%20I%20came%20across%20your%20CV%20and%20I am%20impressed!%20Let's%20connect%20soon.");
                  launchUrl(whatsapp);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.chat_bubble),
                    SizedBox(width: 8),
                    Text('Send a message on WhatsApp!')],
                ),
              ),
            ),
            Container(
              height: 45,
              margin: EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  Uri email = Uri.parse("mailto:mariemmimouni800@gmail.com?subject=Connecting%20Regarding%20Your%20Impressive%20CV&body=Hi%20Mariem,%0A%0AI%20hope%20this%20email%20finds%20you%20well.%20I%20recently%20had%20the%20opportunity%20to%20review%20your%20CV%20and%20I%20must%20say,%20I%20was%20impressed%20by%20your%20qualifications%20and%20experiences.%20Your%20achievements%20speak%20volumes%20about%20your%20dedication%20and%20expertise%20in%20your%20field.%0A%0AI%20would%20be%20interested%20in%20discussing%20potential%20opportunities%20or%20collaborations%20with%20you.%20Let's%20connect%20soon%20to%20explore%20how%20we%20can%20leverage%20each%20other's%20strengths%20for%20mutual%20benefit.%0A");
                  launchUrl(email);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.email),
                    SizedBox(width: 8),
                    Text('Send a E-mail!')],
                ),
              ),
            )
          ],
        )
    );
  }
}
//email
//phone number
//address?
