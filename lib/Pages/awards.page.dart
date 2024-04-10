import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Menu/drawer.widget.dart';
class Awards extends StatelessWidget {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 10,
        title: Text('Honors and Awards'),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 600,
            child: PageView(
              controller: _controller,
              children: [
                Padding(
                    padding: EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 200,
                        color: Theme.of(context).colorScheme.surfaceTint,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [Text('Girls in Tech Ambassador', style: TextStyle(color: Colors.white, fontSize:22, fontWeight: FontWeight.bold ),),
                              Text('WEE Global - Aug 2019',style: TextStyle(color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Nominated as a WEE Global Live Ambassador representing Girls in Tech among 50+ WEE ambassadors around the world.',style: TextStyle(color: Colors.white,),textAlign: TextAlign.center),
                              )]
                        ),
                      ),
                    ),
                  ),
                Padding(
                    padding: EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 200,
                        color: Theme.of(context).colorScheme.surfaceTint,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [Text('Golden Medal Dr. Mae Jemison Award for International Unity', style: TextStyle(color: Colors.white, fontSize:22, fontWeight: FontWeight.bold ),textAlign: TextAlign.center),
                              Text('FIRST Global Challenge - Aug 2018',style: TextStyle(color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Awarded to teams that emulate the best qualities of FIRST Global by breaking down barriers, demonstrating Gracious Professionalism, and building bridges with fellow teams',style: TextStyle(color: Colors.white,),textAlign: TextAlign.center),
                              )]
                        ),
                      ),
                    ),
                  ),
                Padding(
                    padding: EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 200,
                        color: Theme.of(context).colorScheme.surfaceTint,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text('Mansa Musa Award for Fundraising', style: TextStyle(color: Colors.white, fontSize:22, fontWeight: FontWeight.bold ),textAlign: TextAlign.center),
                              Text('FIRST Global Challenge - Aug 2018',style: TextStyle(color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Awarded to teams who demonstrated to FIRST Global that they made a good-faith effort to fundraise.',style: TextStyle(color: Colors.white, fontSize: 16),textAlign: TextAlign.center),
                              )]
                        ),
                      ),
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 200,
                      color: Theme.of(context).colorScheme.surfaceTint,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Text('SUSI Alumna', style: TextStyle(color: Colors.white, fontSize:22, fontWeight: FontWeight.bold ),textAlign: TextAlign.center),
                            Text('U.S. Department of State - July 2023',style: TextStyle(color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("I was among 79+ other young women from around the world joining together in conversation to Elevate Women’s Global Leadership. During the 5-week exchange program in the United States, I have studied about Women's global issues, Civic Engagement, and Leadership.",style: TextStyle(color: Colors.white,),textAlign: TextAlign.center),
                            )]
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SmoothPageIndicator(controller: _controller,count: 4,
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
