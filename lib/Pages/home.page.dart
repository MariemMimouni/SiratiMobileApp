import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sirati_app/Menu/drawer.widget.dart';

import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              expandedHeight: 500,
              title: Text('SIRATI - سيرتي'),
              //floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Theme.of(context).colorScheme.background,
                  child: Column(children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 90.0, bottom: 10.0),
                        child: Image.asset(
                          'images/Profile.png',
                          height: 300,
                        )),
                    Text(
                      'Mariem Mimouni',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Software Engineer - SUSI'23 - FirstSkills",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Uri linkedIn = Uri.parse(
                                "https://www.linkedin.com/in/mariem-mimouni/");
                            launchUrl(linkedIn);
                          },
                          child: Image.asset('images/linkedin.png',
                              width: 40, height: 40),
                        ),
                        SizedBox(width: 20), // Add some space between the icons
                        GestureDetector(
                          onTap: () {
                            Uri github =
                                Uri.parse("https://github.com/MariemMimouni");
                            launchUrl(github);
                          },
                          child: Image.asset('images/github.png',
                              width: 40, height: 40),
                        ),
                      ],
                    ),
                  ]),
                ),
              )),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.dosis(
                    fontSize: 24,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                  children: [
                    TextSpan(
                      text:
                          "Mariem Mimouni is a determined young leader from Tunisia with an unwavering enthusiasm for technology and software development. Currently pursuing her software engineering degree at the International Institute of Technology.\n\n",
                    ),
                    TextSpan(
                      text:
                          "Mariem's journey is marked by her dedication to creating a meaningful impact through the world of tech. Beyond her undergraduate studies, she aspires to delve deeper into the realms of artificial intelligence and machine learning, with plans to pursue graduate studies in this field. Her commitment to growth and excellence is evident in her continuous quest to expand her knowledge and skills.\n\n",
                    ),
                    TextSpan(
                      text:
                          "Mariem is deeply committed to inspiring fellow youth to uncover their passions and create change on both local and global stages. Mariem is poised to make a significant impact in the ever-evolving landscape of technology and beyond.\n\n",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
