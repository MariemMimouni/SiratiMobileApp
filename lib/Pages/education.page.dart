import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';


import '../Menu/drawer.widget.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          elevation: 10,
          title: Text('Education'),
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
                        iconData: Icons.school,
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
                                'Baccaluarate Degree',
                                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text('Mahmoud Magdish High School'),
                              Text('Graduated on: Juin 2020'),
                              Text('Mathematics'),
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
                        iconData: Icons.school,
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
                                'Pre-Engineering Degree',
                                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)
                              ),
                              Text('IPEIS'),
                              Text('Graduated on: July 2022'),
                              Text('Mathematics & Physics'),
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
                      LineStyle(color: Theme.of(context).colorScheme.primary.withOpacity(0.5)),
                  indicatorStyle: IndicatorStyle(
                      width: 50,
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                      iconStyle: IconStyle(
                        iconData: Icons.school,
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
                            .primary
                            .withOpacity(0.5),
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Software Engineering Degree',
                                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)
                              ),
                              Text('IIT'),
                              Text('Expected Graduation on: July 2025'),
                              Text('Software Development & AI'),
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
