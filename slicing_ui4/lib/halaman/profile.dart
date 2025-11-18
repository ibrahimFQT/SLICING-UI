import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'My Profil',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Fulan bin fulan',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'fulan@gmail.com',
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                        const Text(
                          '+6284593834627392',
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.black,
                                size: 14,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Basic',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 10.0, bottom: 8.0),
              child: Text(
                'Account',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              leading: const Icon(Icons.assignment, color: Colors.black87, size: 28),
              title: const Text('My Orders', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
              trailing: const Icon(Icons.chevron_right, color: Colors.black54),
              onTap: () {},
            ),
            const Divider(height: 1, indent: 16, endIndent: 16, color: Colors.black12),
            
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              leading: const Icon(Icons.credit_card, color: Colors.black87, size: 28),
              title: const Text('My Subscription', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
              trailing: const Icon(Icons.chevron_right, color: Colors.black54),
              onTap: () {},
            ),
            const Divider(height: 1, indent: 16, endIndent: 16, color: Colors.black12),
            
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              leading: const Icon(Icons.local_offer, color: Colors.black87, size: 28),
              title: const Text('Promo', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
              trailing: const Icon(Icons.chevron_right, color: Colors.black54),
              onTap: () {},
            ),
            const Divider(height: 1, indent: 16, endIndent: 16, color: Colors.black12),
            
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              leading: const Icon(Icons.payment, color: Colors.black87, size: 28),
              title: const Text('Payment', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
              trailing: const Icon(Icons.chevron_right, color: Colors.black54),
              onTap: () {},
            ),
            const Divider(height: 1, indent: 16, endIndent: 16, color: Colors.black12),
            
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              leading: const Icon(Icons.help_outline, color: Colors.black87, size: 28),
              title: const Text('Help', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
              trailing: const Icon(Icons.chevron_right, color: Colors.black54),
              onTap: () {},
            ),
            const Divider(height: 1, indent: 16, endIndent: 16, color: Colors.black12),
            
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              leading: const Icon(Icons.language, color: Colors.black87, size: 28),
              title: const Text('Language', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
              trailing: const Icon(Icons.chevron_right, color: Colors.black54),
              onTap: () {},
            ),
            const Divider(height: 1, indent: 16, endIndent: 16, color: Colors.black12),
            
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              leading: const Icon(Icons.logout, color: Colors.black87, size: 28),
              title: const Text('Log Out', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
              trailing: const Icon(Icons.chevron_right, color: Colors.black54),
              onTap: () {},
            ),
            
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}