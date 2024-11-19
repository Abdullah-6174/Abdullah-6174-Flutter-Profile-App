import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.white, // Set background color of the screen
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // Pages for bottom navigation
  final List<Widget> _pages = [
    ProfilePage(),
    DetailsPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Function to handle Settings icon click
  void _onSettingsPressed() {
    print('Settings Clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile App'),
        backgroundColor:
            Colors.orange[100], // Light orange color for the AppBar
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: _onSettingsPressed,
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Details',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile picture in a Card widget
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://via.placeholder.com/150'), // Placeholder image
              ),
            ),
          ),
          const SizedBox(height: 20),

          // User name and occupation with a background color
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.orange[100],
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Abdullah Bashir',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Machine Learning Engineer',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Social media icons
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(FontAwesomeIcons.facebook), // Facebook icon
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(FontAwesomeIcons.twitter), // Twitter icon
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(FontAwesomeIcons.linkedin), // LinkedIn icon
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Basic Information (Age, Location, Hobbies)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Text('Age: ', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('25'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Text('Location: ',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Lahore'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Text('Hobby: ', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Playing Chess'),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Edit Profile button at the bottom
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.orange[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.edit, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Add this to make the content scrollable
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section 1: Personal Information
            const Text(
              'Personal Details',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  Text('Full Name: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Abdullah Bashir'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  Text('Date of Birth: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('26/08/1999'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  Text('Nationality: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Pakistani'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Row(
                children: [
                  Text('Gender: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Male'),
                ],
              ),
            ),

            // Section 2: Professional Information
            const Text(
              'Professional Details',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  Text('Occupation: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Machine Learning Engineer'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  Text('Company: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Systems Limited'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  Text('Years of Experience: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('5'),
                ],
              ),
            ),
            const Text(
              'Skills:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Skills as a Row widget with proficiency levels
            const Row(
              children: [
                Chip(label: Text('NLP (Expert)')),
                SizedBox(width: 10),
                Chip(label: Text('Deep Learning (Advanced)')),
                SizedBox(width: 10),
                Chip(label: Text('Computer Vision (Intermediate)')),
              ],
            ),
            const SizedBox(height: 20),

            // Section 3: Contact Information
            const Text(
              'Contact Details',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 10),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          Text('Phone: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('+92 321 6107664'),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          Text('Email: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('bashirabdullah789@gmail.com'),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          Text('Address: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Lahore, Pakistan'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Toggle switches for Notifications and Dark Mode
  bool _isNotificationsEnabled = false;
  bool _isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      // Removed the Scaffold and AppBar
      children: [
        // Switches and Toggles Section
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Preferences',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Enable Notifications'),
                  Switch(
                    value: _isNotificationsEnabled,
                    onChanged: (value) {
                      setState(() {
                        _isNotificationsEnabled = value;
                      });
                    },
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Dark Mode'),
                  Switch(
                    value: _isDarkModeEnabled,
                    onChanged: (value) {
                      setState(() {
                        _isDarkModeEnabled = value;
                      });
                    },
                  ),
                ],
              ),
              const Divider(),
            ],
          ),
        ),

        // Account Settings Section
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Account Settings',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: const Icon(Icons.lock),
                title: const Text('Change Password'),
                onTap: () {
                  // Handle change password
                  print('Change Password clicked');
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.subscriptions),
                title: const Text('Manage Subscriptions'),
                onTap: () {
                  // Handle manage subscriptions
                  print('Manage Subscriptions clicked');
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.privacy_tip),
                title: const Text('Privacy Settings'),
                onTap: () {
                  // Handle privacy settings
                  print('Privacy Settings clicked');
                },
              ),
              const Divider(),
            ],
          ),
        ),

        // About Section
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'About',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.orange[50],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 3), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'App Version: 1.0.0',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Developer: Abdullah Bashir',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Contact: bashirabdullah789@gmail.com',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}