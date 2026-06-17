import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 231, 238),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile image spanning the top of the page
            Image.asset(
              'asset/image/profile_1.jpeg',
              width: double.infinity,
              height: 415,
              fit: BoxFit.cover,
            ),
            // Title and Star Row
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Taenthai Panthuchat',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'นักศึกษาสาขาวิทยาการคอมพิวเตอร์, คณะศิลปศาสตร์และวิทยาศาสตร์, มหาวิทยาลัยราชภัฏศรีสะเกษ.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade800,
                          ),
                        ),
                        Text(
                          'Sisaket Rajabhat University',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Icon(Icons.star, color: Colors.red, size: 32),
                ],
              ),
            ),
            // Social buttons row
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildActionButton(
                    icon: Icons.facebook,
                    label: 'Social',
                    onTap: () {
                      // Social tap action
                    },
                  ),
                  _buildActionButton(
                    icon: Icons.email,
                    label: 'Email',
                    onTap: () {
                      // Email tap action
                    },
                  ),
                  _buildActionButton(
                    icon: Icons.share,
                    label: 'Share',
                    onTap: () {
                      // Share tap action
                    },
                  ),
                ],
              ),
            ),
            // Thin Divider line
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Divider(height: 1, color: Colors.grey.shade300),
            ),
            // Bio / Description Paragraphs
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'นักศึกษาสาขาวิทยาการคอมพิวเตอร์, คณะศิลปศาสตร์และวิทยาศาสตร์, มหาวิทยาลัยราชภัฏศรีสะเกษ.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                      height: 1.6,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'กำลังศึกษาในระดับปริญญาตรี คณะศิลปศาสตร์และวิทยาศาสตร์, มหาวิทยาลัยราชภัฏศรีสะเกษ. ชั้นปีที่ 3',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40), // Safe spacing at bottom
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    const themeColor = Colors.blue;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: themeColor, size: 28),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                color: themeColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
