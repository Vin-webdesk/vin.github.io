
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:universal_html/html.dart' as html;


import '../../animations/entrance_fader.dart';
import '../../config/app.dart';
import '../../config/configs.dart';
import '../../constants.dart';
import '../../provider/app_provider.dart';
import '../../provider/drawer_provider.dart';
import '../../provider/scroll_provider.dart';
import '../../responsive/responsive.dart';
import '../../utils/navbar_utils.dart';
import '../../utils/utils.dart';
import '../../widgets/arrow_on_top.dart';
import '../../widgets/navbar_actions_button.dart';
import '../../widgets/navbar_logo.dart';

part 'widgets/_navbar_desktop.dart';
part 'widgets/_mobile_drawer.dart';
part 'widgets/_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            const _Body(),
            const ArrowOnTop(),
            Responsive.isTablet(context) || Responsive.isMobile(context)
                ? const _NavBarTablet()
                : const _NavbarDesktop(),
          ],
        ),
      ),
    );
  }
}
