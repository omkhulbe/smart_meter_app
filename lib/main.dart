import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static final title = 'Smart Meter';

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 0;
  bool _isSignedIn = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyApp.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: [
            // Other screens for Dashboard, Devices, and Search
            Placeholder(),
            Placeholder(),
            Placeholder(),
            // Settings screen
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: ListView(
                children: [
                  SettingsGroup(
                    items: [
                      SettingsItem(
                        onTap: () {},
                        icons: Icons.assignment,
                        iconStyle: IconStyle(
                          iconsColor: Colors.white,
                          withBackground: true,
                          backgroundColor: Colors.orange,
                        ),
                        title: 'Set Goals',
                        subtitle: "Set energy-saving goals",
                      ),
                      SettingsItem(
                        onTap: () {},
                        icons: Icons.help,
                        iconStyle: IconStyle(
                          iconsColor: Colors.white,
                          withBackground: true,
                          backgroundColor: Colors.blue,
                        ),
                        title: 'Help & Support',
                        subtitle: "Assistance and Support Center",
                      ),
                      SettingsItem(
                        onTap: () {},
                        icons: Icons.feedback,
                        iconStyle: IconStyle(
                          iconsColor: Colors.white,
                          withBackground: true,
                          backgroundColor: Colors.red,
                        ),
                        title: 'Report a Issue',
                        subtitle: "Report an App Issue",
                      ),
                    ],
                  ),
                  SettingsGroup(
                    items: [
                      SettingsItem(
                        onTap: () {},
                        icons: Icons.info_rounded,
                        iconStyle: IconStyle(
                          backgroundColor: Colors.purple,
                        ),
                        title: 'About',
                        subtitle: "Learn more about Smart Meter",
                      ),
                    ],
                  ),
                  // You can add a settings title
                  SettingsGroup(
                    settingsGroupTitle: "Account",
                    items: _isSignedIn
                        ? [
                      SettingsItem(
                        onTap: () {},
                        icons: Icons.account_circle_rounded,
                        title: "My Profile",
                      ),
                      SettingsItem(
                        onTap: () {},
                        icons: Icons.exit_to_app_rounded,
                        title: "Sign Out",
                      ),
                    ]
                        : [
                      SettingsItem(
                        onTap: () {},
                        icons: Icons.login_rounded,
                        title: "Sign In",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: 4.0),
          child: SalomonBottomBar(
            currentIndex: _currentIndex,
            onTap: (i) => setState(() => _currentIndex = i),
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: Icon(Icons.dashboard),
                title: Text("Dashboard"),
                selectedColor: Colors.purple,
              ),

              /// Likes
              SalomonBottomBarItem(
                icon: Icon(Icons.device_hub),
                title: Text("Devices"),
                selectedColor: Colors.pink,
              ),

              /// Search
              SalomonBottomBarItem(
                icon: Icon(Icons.search),
                title: Text("Search"),
                selectedColor: Colors.orange,
              ),

              /// Settings
              SalomonBottomBarItem(
                icon: Icon(Icons.settings),
                title: Text("Settings"),
                selectedColor: Colors.teal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
