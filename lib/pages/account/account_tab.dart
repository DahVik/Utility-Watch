import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utility_watch/globals/colors.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 29,
                backgroundColor: MyColors.greyColor,
                child: Text(
                  "AK",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 20),
              Text(
                "Ashutosh Kumar",
                style: GoogleFonts.nunitoSans(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: MyColors.greyColor,
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          Divider(color: MyColors.greyColor),
          SizedBox(height: 20), // Increase space between menu items
          _buildMenuItem(Icons.notifications_outlined, "Notification"),
          _buildMenuItem(Icons.leaderboard, "Leaderboard"),
          _buildMenuItem(Icons.analytics, "Report and Analytics"),
          _buildMenuItem(Icons.help_outline, "Help"),
          _buildMenuItem(Icons.person_add, "Invite a friend"),
        ],
      ),
    );
  }

  ListTile _buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: MyColors.greyColor),
      title: Text(
        title,
        style: GoogleFonts.nunitoSans(
          fontSize: 21,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
      onTap: () {
        // Handle menu item tap
      },
    );
  }
}
