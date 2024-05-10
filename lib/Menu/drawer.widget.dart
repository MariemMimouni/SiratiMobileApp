import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Theme/theme_provider.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    bool mode = true;
    return Drawer(
        child: ListView(children: [
      DrawerHeader(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            /*gradient:
                LinearGradient(begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,stops: [0.2, 1],colors: [Theme.of(context).colorScheme.primary, Colors.white]),*/
          ),
          child: Container(child: Image.asset('images/SiratiLogo1.png')),
          ),

          ListTile(
        title: Text('Home', style: TextStyle(fontSize: 22)),
        leading: Icon(
          Icons.home,
          color: Theme.of(context).colorScheme.primary,
        ),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, "/home");
        },
      ),
      ListTile(
        title: Text('Education', style: TextStyle(fontSize: 22)),
        leading: Icon(
          Icons.school,
          color: Theme.of(context).colorScheme.primary,
        ),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, "/education");
        },
      ),
      ListTile(
        title: Text('Work ', style: TextStyle(fontSize: 22)),
        leading: Icon(
          Icons.work,
          color: Theme.of(context).colorScheme.primary,
        ),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, "/work");
        },
      ),
      ListTile(
        title: Text('Projects', style: TextStyle(fontSize: 22)),
        leading: Icon(
          Icons.my_library_books_rounded,
          color: Theme.of(context).colorScheme.primary,
        ),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, "/projects");
        },
      ),
      ListTile(
        title: Text('Skills', style: TextStyle(fontSize: 22)),
        leading: Icon(
          Icons.lightbulb,
          color: Theme.of(context).colorScheme.primary,
        ),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, "/skills");
        },
      ),
      ListTile(
        title: Text('Awards', style: TextStyle(fontSize: 22)),
        leading: Icon(
          Icons.star,
          color: Theme.of(context).colorScheme.primary,
        ),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, "/awards");
        },
      ),
      Divider(),
      ListTile(
        title: Text('CV', style: TextStyle(fontSize: 22)),
        leading: Icon(
          Icons.contact_page,
          color: Theme.of(context).colorScheme.primary,
        ),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, "/cv");
        },
      ),
      ListTile(
        title: Text('Contact', style: TextStyle(fontSize: 22)),
        leading: Icon(
          Icons.phone,
          color: Theme.of(context).colorScheme.primary,
        ),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, "/contact");
        },
      ),
          Divider(),

          ListTile(
            title: Text(
              'Toggle Theme',
              style: TextStyle(fontSize: 22),
            ),
            leading: Icon(
              Icons.brightness_6, // Icon for theme toggle
              color: Theme.of(context).colorScheme.primary,
            ),
            onTap: () {
              setState(() {
                Provider.of<ThemeProvider>(context, listen: false).toggleTheme() ;
              });
              Navigator.pop(context);
            },
          ),
    ]));
  }
}
