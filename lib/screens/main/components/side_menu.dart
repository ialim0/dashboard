import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
            DrawerListile(
              title: 'Dashboard',
              SvgSrc: "assets/icons/menu_dashbord.svg",
              press: () {},
            ),
            DrawerListile(
              title: 'Transaction',
              SvgSrc: "assets/icons/menu_tran.svg",
              press: () {},
            ),
            DrawerListile(
              title: 'Task',
              SvgSrc: "assets/icons/menu_task.svg",
              press: () {},
            ),
            DrawerListile(
              title: 'Documents',
              SvgSrc: "assets/icons/menu_doc.svg",
              press: () {},
            ),
            DrawerListile(
              title: 'Store',
              SvgSrc: "assets/icons/menu_store.svg",
              press: () {},
            ),
            DrawerListile(
              title: 'Notifications',
              SvgSrc: "assets/icons/menu_notification.svg",
              press: () {},
            ),
            DrawerListile(
              title: 'Profile',
              SvgSrc: "assets/icons/menu_profile.svg",
              press: () {},
            ),
            DrawerListile(
              title: 'Settings',
              SvgSrc: "assets/icons/menu_setting.svg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListile extends StatelessWidget {
  const DrawerListile({
    Key key,
    @required this.title,
    @required this.SvgSrc,
    @required this.press,
  }) : super(key: key);

  final String title, SvgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: SvgPicture.asset(
        SvgSrc,
        color: Color.fromARGB(255, 173, 182, 171),
        height: 20,
      ),
      title: Text(
        title,
        style: GoogleFonts.alikeAngular(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
