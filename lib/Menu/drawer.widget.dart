 import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            /*decoration: BoxDecoration(
                gradient:
                LinearGradient(begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,stops: [0.2, 1],colors: [Theme.of(context).colorScheme.primary, Colors.white])),*/
            child: Container() ),
        ListTile(
          title: Text('Home',
              style: TextStyle(fontSize: 22)),
          leading: Icon(Icons.home, color: Theme.of(context).colorScheme.primary,),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, "/home");
          },
        ),
          ListTile(
            title: Text('Education',
                style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.school, color: Theme.of(context).colorScheme.primary,),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/education");
            },
          ),
          ListTile(
            title: Text('Work ',
                style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.work, color: Theme.of(context).colorScheme.primary,),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/work");
            },
          ),
          ListTile(
            title: Text('Projects',
                style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.my_library_books_rounded, color: Theme.of(context).colorScheme.primary,),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/projects");
            },
          ),
          ListTile(
            title: Text('Volunteer',
                style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.volunteer_activism, color: Theme.of(context).colorScheme.primary,),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/volunteer");
            },
          ),
          ListTile(
            title: Text('Skills',
                style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.language, color: Theme.of(context).colorScheme.primary,),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/skills");
            },
          ),
          ListTile(
            title: Text('Awards', style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.language, color: Theme.of(context).colorScheme.primary,),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/awards");
            },
          ),
          Divider(),
          ListTile(
            title: Text('Contact',
                style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.phone, color: Theme.of(context).colorScheme.primary,),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/contact");
            },
          ),
      ])
    );
  }
}
