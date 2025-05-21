import 'package:flutter/material.dart';
import 'package:my_flutter_app/setting/contact_us_screen.dart';
import 'widgets/setting_row.dart';
import 'logout_dialog.dart';
import 'language_screen.dart';
import 'about_app_screen.dart';
import 'change_password_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/icons/Tcare.png"),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Account",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 10),
          SettingRow(
            imagePath: "assets/icons/Male User.png",
            text: "Edit Profile",
            icon: Icons.arrow_forward_ios,
            onTap: () {
              // Handle profile tap
            },
          ),
          SizedBox(height: 10),
          SettingRow(
            imagePath: "assets/icons/Lock.png",
            text: "Change password",
            icon: Icons.arrow_forward_ios,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ChangePasswordScreen(),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Settings",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 10),
          SettingRow(
            imagePath: "assets/icons/Mask group.png",
            text: "Dark Mode",

            onTap: () {
              // Handle profile tap
            },
          ),
          SizedBox(height: 10),
          SettingRow(
            imagePath: "assets/icons/lang.png",
            text: "Language",
            icon: Icons.arrow_forward_ios,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const LanguageScreen()),
              );
            },
          ),
          SizedBox(height: 10),
          SettingRow(
            imagePath: "assets/icons/support 1.png",
            text: "Contact Us",
            icon: Icons.arrow_forward_ios,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ContactUsScreen(),
                ),
              );
            },
          ),

          SizedBox(height: 10),
          SettingRow(
            imagePath: "assets/icons/Info.png",
            text: "About App",
            icon: Icons.arrow_forward_ios,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AboutAppScreen()),
              );
            },
          ),
          SizedBox(height: 30),

          SettingRow(
            imagePath: "assets/icons/Logout.png",
            text: "Logout",
            textColor: Color(0xFFCA2F1F),
            onTap: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => const LogoutDialog(),
              );
            },
          ),
        ],
      ),
    );
  }
}
