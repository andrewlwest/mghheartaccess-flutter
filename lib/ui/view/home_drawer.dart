import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mghheartaccess/ui/shared/colors.dart';
import 'package:mghheartaccess/ui/viewmodel/home_model.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer(
    this.model, {
    super.key,
  });

  final HomeModel model;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: mgbBlue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/images/mgb-icon.svg",
                  height: 48,
                  alignment: Alignment.topLeft,
                  colorFilter: ColorFilter.mode(mgbTeal, BlendMode.srcIn),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'MGH Heart Center',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'RobotoSlab',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              model.navigateToAboutScreen(context);
            },
            leading: FaIcon(
              FontAwesomeIcons.solidHeartPulse,
              size: 20,
              color: mgbGray,
            ),
            title: const Text('About Us'),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.solidHandshake,
              size: 20,
              color: mgbGray,
            ),
            title: const Text('Terms of Use'),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.solidShield,
              size: 20,
              color: mgbGray,
            ),
            title: const Text('Privacy Policy'),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.solidAt,
              size: 20,
              color: mgbGray,
            ),
            title: const Text('Feedback'),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.solidStar,
              size: 20,
              color: mgbGray,
            ),
            title: const Text('Rate the app'),
          ),
          const Divider(),

          ListTile(
            title: Transform.translate(
              offset: const Offset(5, 0),
              child: const Text('MGH Heart'),
            ),
            subtitle: Transform.translate(
              offset: const Offset(5, 0),
              child: const Text("v 1.0.0"),
            ),
            leading: SizedBox(
              width: 24,
              height: 24,
              child: FaIcon(
                FontAwesomeIcons.solidCircleInfo,
                size: 20,
                color: mgbGray,
              ),
            ),
          ),

          // MGHLCS logo
          ListTile(
            title: Transform.translate(
                offset: const Offset(5, 0),
                child: SvgPicture.asset(
                  "assets/images/mgh-lcs.svg",
                  height: 24,
                  alignment: Alignment.topLeft,
                  colorFilter: ColorFilter.mode(mgbGray, BlendMode.srcIn),
                )),
            leading: SizedBox(
              width: 20,
              child: FaIcon(
                FontAwesomeIcons.solidCode,
                size: 20,
                color: mgbGray,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
