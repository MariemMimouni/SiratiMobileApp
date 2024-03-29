import 'package:flutter/material.dart';
import 'package:sirati_app/Pages/awards.page.dart';
import 'package:sirati_app/Pages/volunteer.page.dart';
import 'package:sirati_app/Pages/work.page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Menu/drawer.widget.dart';
import 'education.page.dart';
class Projects extends StatelessWidget {
final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          elevation: 10,
          title: Text('سيرتي'),
        ),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 400,
                  child: PageView(
                    controller: _controller,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Uri github = Uri.parse("https://github.com/MariemMimouni/PersonalPortfolio");
                          launchUrl(github);                        },
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 200,
                              color: Theme.of(context).colorScheme.onSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text('Personal Portfolio Website', style: TextStyle(color: Colors.white, fontSize:22, fontWeight: FontWeight.bold ),),
                                    Text('School Project',style: TextStyle(color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic),),
                                  Text('HTML - CSS - JavaScript',style: TextStyle(color: Colors.white),)]
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Uri github = Uri.parse("https://github.com/OnsKharrat06/FirstSkillsClub_Website");
                          launchUrl(github);
                          },
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 200,
                              color: Theme.of(context).colorScheme.onSurface,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text('First Skills Club Website', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                                Text('Internship',style: TextStyle(color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic)),
                                Text('HTML - CSS - JavaScript',style: TextStyle(color: Colors.white))]
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Uri github = Uri.parse("https://github.com/MariemMimouni/SiratiMobileApp");
                          launchUrl(github);                        },
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 200,
                              color: Theme.of(context).colorScheme.onSurface,
                              child:Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text('SIRATI Mobile APP', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),),
                                    Text('School Project',style: TextStyle(color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic)),
                                    Text('Flutter - Dart',style: TextStyle(color: Colors.white))]
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SmoothPageIndicator(controller: _controller,count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Theme.of(context).colorScheme.secondary,
                  dotColor: Theme.of(context).colorScheme.onBackground,
                  dotHeight: 30,
                  dotWidth: 30,
                ),)
              ],
            ),
    );
  }
}
