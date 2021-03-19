import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          CreateDrawerHeader(),
          CreateDrawerBodyItem(
            icon: Icons.home,
            text: 'Home',
            onTap: () => Navigator.pop(context),
          ),
          CreateDrawerBodyItem(
            icon: Icons.account_circle,
            text: 'Profile',
            onTap: () => Navigator.pop(context),
          ),
          CreateDrawerBodyItem(
            icon: Icons.event_note,
            text: 'Events',
            onTap: () => Navigator.pop(context),
          ),
          Divider(),
          CreateDrawerBodyItem(
            icon: Icons.notifications_active,
            text: 'Notifications',
            onTap: () => Navigator.pop(context),
          ),
          CreateDrawerBodyItem(
            icon: Icons.contact_phone,
            text: 'Contact Info',
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class CreateDrawerHeader extends StatelessWidget {
  const CreateDrawerHeader();

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/navigation_drawer.jpg'))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipOval(
              child: Image(
                image: AssetImage('assets/images/sign_up/profile_photo.png'),
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
            Text('Name Surname',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}

class CreateDrawerBodyItem extends StatelessWidget {
  const CreateDrawerBodyItem({this.icon, this.text, this.onTap});

  final icon;
  final text;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
