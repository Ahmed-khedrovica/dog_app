import 'package:doghome/constants.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  static const IconData pets = IconData(0xe4a1, fontFamily: 'MaterialIcons');
  static String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Dog',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            Text('Care',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.brown
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(Icons.notifications, color: kPrimaryColor),
          SizedBox(width: 16),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: screenSize.height * 0.35, // 35% of screen height
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/homeDog.png'
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 16),
              LayoutBuilder(
                builder: (context, constraints) {
                  // Determine crossAxisCount based on screen width
                  int crossAxisCount = screenSize.width > 600 ? 3 : 2;

                  return GridView.count(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      _buildServiceCard(Icons.person, "User"),
                      _buildServiceCard(pets, "NGOs"),
                      // Add more cards as needed
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: kPrimaryColor),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning_amber, color: kPrimaryColor),
            label: 'Pets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined, color: kPrimaryColor),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity, color: kPrimaryColor),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

// User & NGOs container
  Widget _buildServiceCard(IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 5,
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 40, color: kPrimaryColor),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}