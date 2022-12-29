import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          LogoHeader(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xFFC03839),
              child: Text('NC', style: TextStyle(color: Colors.white)),
            ),
            title: Text('Nishtha Chitalia', style: GoogleFonts.notoSerif(fontWeight: FontWeight.w700, fontSize: 16)),
            subtitle: Text('nishtha@gmail.com'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Homepage', style: GoogleFonts.notoSerif(fontWeight: FontWeight.w700, fontSize: 15)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications', style: GoogleFonts.notoSerif(fontWeight: FontWeight.w700, fontSize: 15)),
            trailing: ClipOval(
                child: Container(
                    color: Color(0xFFC03839),
                    width: 20,
                    height: 20,
                    child: Center(
                      child: Text(
                        '8',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ))),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          // ORANGE BUTTON
          // ListTile(
          //   leading: Icon(Icons.notifications),
          //   title: Text('Notifications'),
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(15),
          //   ),
          //   textColor: Colors.white,
          //   iconColor: Colors.white,
          //   tileColor: Color(0xFFC03839),
          //   trailing: ClipOval(
          //       child: Container(
          //           color: Colors.white,
          //           width: 20,
          //           height: 20,
          //           child: Center(
          //             child: Text(
          //               '8',
          //               style: TextStyle(
          //                 color: Color(0xFFC03839),
          //                 fontSize: 12,
          //               ),
          //             ),
          //           ))),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          //),
          ListTile(
            leading: Icon(Icons.restaurant_menu),
            title: Text('Menu', style: GoogleFonts.notoSerif(fontWeight: FontWeight.w700, fontSize: 15)),
            onTap: () {
              // Navigator.pop(context);
              Navigator.pushNamed(context, '/menu');
            },
          ),
          ListTile(
            leading: Icon(Icons.local_pizza),
            title: Text('Categories', style: GoogleFonts.notoSerif(fontWeight: FontWeight.w700, fontSize: 15)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings', style: GoogleFonts.notoSerif(fontWeight: FontWeight.w700, fontSize: 15)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out', style: GoogleFonts.notoSerif(fontWeight: FontWeight.w700, fontSize: 15)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class LogoHeader extends StatelessWidget {
  const LogoHeader({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: DrawerHeader(
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)),
          color: Color(0xFF2f2235),
        ),
        child: Image(
          fit: BoxFit.contain,
          image: NetworkImage('https://www.smokeydough.in/images/logo.png'),
        ),
      ),
    );
  }
}
