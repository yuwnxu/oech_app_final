import 'package:flutter/material.dart';
import 'notification.dart';
import 'cardsettings.dart';
import 'package.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isDark = false;
  bool isBalanceVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage:
                          AssetImage('assets/images/avatar.png'),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello Ken',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF3A3A3A),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text.rich(
                                TextSpan(
                                  text: 'Current balance: ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF3A3A3A),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: isBalanceVisible
                                          ? '₦10,712:00'
                                          : '••••••••',
                                      style: TextStyle(
                                        color: Color(0xFF0560FA),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isBalanceVisible = !isBalanceVisible;
                            });
                          },
                          icon: Icon(
                              isBalanceVisible
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined
                          ),
                          color: Color(0xFF3A3A3A),
                        ),
                      ],
                    ),
                  ],
                ),
              ),


              Container(
                color: Colors.white,
                padding:
                EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Enable dark Mode',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3A3A3A),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Transform.scale(
                      scale: 0.8,
                      child: Switch(
                        value: isDark,
                        onChanged: (value) {
                          setState(() => isDark = value);
                          // todo: переключить тему приложения
                        },
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12),

              _ProfileItem(
                icon: Icons.person_outline,
                title: 'Edit Profile',
                subtitle: 'Name, phone no, address, email ...',
                onTap: () {},
              ),
              _ProfileItem(
                icon: Icons.description_outlined,
                title: 'Statements & Reports',
                subtitle:
                'Download transaction details, orders, deliveries',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SendPackagePage(),
                    ),
                  );
                },
              ),
              _ProfileItem(
                icon: Icons.notifications_none,
                title: 'Notification Settings',
                subtitle: 'mute, unmute, set location & tracking setting',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => NotificationPage(),
                    ),
                  );
                },
              ),
              _ProfileItem(
                icon: Icons.credit_card_outlined,
                title: 'Card & Bank account settings',
                subtitle: 'change cards, delete card details',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CardSettingsPage(),
                    ),
                  );
                },
              ),
              _ProfileItem(
                icon: Icons.group_outlined,
                title: 'Referrals',
                subtitle: 'check no of friends and earn',
                onTap: () {},
              ),
              _ProfileItem(
                icon: Icons.info_outline,
                title: 'About Us',
                subtitle: 'know more about us, terms and conditions',
                onTap: () {},
              ),

              _ProfileItem(
                icon: Icons.logout,
                title: 'Log Out',
                subtitle: '',
                iconColor: Colors.red,
                textColor: Colors.red,
                showDivider: false,
                onTap: () {},
              ),

              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

//dbl;tn
class _ProfileItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final Color iconColor;
  final Color textColor;
  final bool showDivider;

  const _ProfileItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.iconColor = const Color(0xFF3A3A3A),
    this.textColor = const Color(0xFF3A3A3A),
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        elevation: 0.5,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Padding(
            padding:
            EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(icon, color: iconColor),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: textColor,
                            ),
                          ),
                          if (subtitle.isNotEmpty) ...[
                            SizedBox(height: 4),
                            Text(
                              subtitle,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right, color: Colors.grey),
                  ],
                ),
                if (showDivider) SizedBox(height: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
