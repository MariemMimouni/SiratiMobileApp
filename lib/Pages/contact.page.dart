import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Menu/drawer.widget.dart';
class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          elevation: 10,
          title: Text('Contact'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Theme.of(context).colorScheme.background,
              child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                        child:Image.asset('images/Profile.png', height: 250 ,)),
                    Text('Mariem Mimouni', style: TextStyle(fontSize: 25,),),
                    Text("Software Engineer - SUSI'23 - FirstSkills", style: TextStyle(fontSize: 18,),),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Uri linkedIn = Uri.parse("https://www.linkedin.com/in/mariem-mimouni/");
                            launchUrl(linkedIn);
                          },
                          child: Image.asset('images/linkedin.png', width: 40, height: 40), // Replace 'images/linkedin_icon.png' with your LinkedIn icon asset
                        ),
                        SizedBox(width: 20), // Add some space between the icons
                        GestureDetector(
                          onTap: () {
                            Uri github = Uri.parse("https://github.com/MariemMimouni");
                            launchUrl(github);
                          },
                          child: Image.asset('images/github.png', width: 40, height: 40), // Replace 'images/github_icon.png' with your GitHub icon asset
                        ),
                      ],
                    ),
                  ]),
            ),
            SizedBox(height: 40),
            Column(
            children: [
            Container(
              height: 50,
              width: 300,
              margin: EdgeInsets.all(8),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.primaryContainer), // Change the color here
                ),
                onPressed: () {
                  Uri phone = Uri.parse('tel:+21629782323');
                  launchUrl(phone);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.phone_forwarded, color: Theme.of(context).colorScheme.onBackground,),
                  SizedBox(width: 8),
                  Text('Phone Call', style: TextStyle(color: Theme.of(context).colorScheme.onBackground),)],
                ),
              ),
            ),
            Container(
              height: 50,
              width: 300,
              margin: EdgeInsets.all(8),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.primaryContainer), // Change the color here
                ),
                onPressed: () {
                  Uri whatsapp = Uri.parse("https://wa.me/21629782323?text=Hi%20Mariem.%0AI%20came%20across%20your%20CV%20and%20I am%20impressed!%20Let's%20connect%20soon.");
                  launchUrl(whatsapp);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.chat_bubble ,color: Theme.of(context).colorScheme.onBackground),
                    SizedBox(width: 8),
                    Text('Send a message on WhatsApp!', style: TextStyle(color: Theme.of(context).colorScheme.onBackground),)],
                ),
              ),
            ),
            Container(
              height: 50,
              width: 300,
              margin: EdgeInsets.all(8),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.primaryContainer), // Change the color here
                ),
                onPressed: () {
                  Uri email = Uri.parse("mailto:mariemmimouni800@gmail.com?subject=Connecting%20Regarding%20Your%20Impressive%20CV&body=Hi%20Mariem,%0A%0AI%20hope%20this%20email%20finds%20you%20well.%20I%20recently%20had%20the%20opportunity%20to%20review%20your%20CV%20and%20I%20must%20say,%20I%20was%20impressed%20by%20your%20qualifications%20and%20experiences.%20Your%20achievements%20speak%20volumes%20about%20your%20dedication%20and%20expertise%20in%20your%20field.%0A%0AI%20would%20be%20interested%20in%20discussing%20potential%20opportunities%20or%20collaborations%20with%20you.%20Let's%20connect%20soon%20to%20explore%20how%20we%20can%20leverage%20each%20other's%20strengths%20for%20mutual%20benefit.%0A");
                  launchUrl(email);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.email,color: Theme.of(context).colorScheme.onBackground),
                    SizedBox(width: 8),
                    Text('Send a E-mail!', style: TextStyle(color: Theme.of(context).colorScheme.onBackground),)],
                ),
              ),
            )]),
            SizedBox(height: 20),

            LikeButton(size: 50,)
          ],
        )
    );
  }
}
//email
//phone number
//address?
