import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../Menu/drawer.widget.dart';
class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          elevation: 10,
          title: Text('Work Experience'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
          child: ListView(
            children: [
              SizedBox(
                height: 200,
                child: TimelineTile(
                  isFirst: true,
                  beforeLineStyle:
                  LineStyle(color: Theme.of(context).colorScheme.primary),
                  indicatorStyle: IndicatorStyle(
                      width: 50,
                      color: Theme.of(context).colorScheme.primary,
                      iconStyle: IconStyle(
                        iconData: Icons.work,
                        color: Theme.of(context).colorScheme.onPrimary,
                      )),
                  endChild:
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 150,
                        color: Theme.of(context)
                            .colorScheme
                            .primary,
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  'Spring Internship',
                                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)
                              ),
                              Text('TIC Group'),
                              Text('Machine Learning & Web Development'),
                              Text('Mar 2024 - Juin 2024'),
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: TimelineTile(
                  isFirst: false,
                  beforeLineStyle:
                  LineStyle(color: Theme.of(context).colorScheme.primary),
                  indicatorStyle: IndicatorStyle(
                      width: 50,
                      color: Theme.of(context).colorScheme.primary,
                      iconStyle: IconStyle(
                        iconData: Icons.work,
                        color: Theme.of(context).colorScheme.onPrimary,
                      )),
                  endChild: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 150,
                        color: Theme.of(context)
                            .colorScheme
                            .primary,
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Summer Internship',
                                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text('First Skills Club'),
                              Text('Front-End Web Development'),
                              Text('Aug 2023 - Sep 2023'),
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: TimelineTile(
                  isLast: true,
                  beforeLineStyle:
                  LineStyle(color: Theme.of(context).colorScheme.primary),
                  indicatorStyle: IndicatorStyle(
                      width: 50,
                      color: Theme.of(context).colorScheme.primary,
                      iconStyle: IconStyle(
                        iconData: Icons.work,
                        color: Theme.of(context).colorScheme.onPrimary,
                      )),
                  endChild: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 150,
                        color: Theme.of(context)
                            .colorScheme
                            .primary,
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  'Lead Operations Intern',
                                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)
                              ),
                              Text('WEE Global'),
                              Text('Social Media - Website maintainance'),
                              Text('Feb 2021 - Sep 2021'),
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
