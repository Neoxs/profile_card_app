import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Gilroy',
        scaffoldBackgroundColor: Colors.grey[50],
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              ProfileHeader(),
              SizedBox(height: 30),
              ContactInformationCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 10,
              ),
            ],
          ),
          child: const CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "Mohamed Yassine ABDELKADER-KHAROUBI",
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            "Student at University of Montpellier",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

class ContactInformationCard extends StatelessWidget {
  const ContactInformationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildContactTile(
            icon: Icons.email,
            title: "Email",
            subtitle: "y.abdelkaderkharoubi@gmail.com",
          ),
          _buildDivider(),
          _buildContactTile(
            icon: Icons.phone,
            title: "Phone",
            subtitle: "+33 748202428",
          ),
          _buildDivider(),
          _buildContactTile(
            icon: Icons.location_on,
            title: "Location",
            subtitle: "Montpellier, France",
          ),
          _buildDivider(),
          _buildContactTile(
            icon: Icons.facebook,
            title: "Facebook",
            subtitle: "Yacine KHAROUBI",
          ),
          _buildDivider(),
          _buildContactTile(
            icon: Icons.link,
            title: "Website",
            subtitle: "Neoxs.me",
          ),
        ],
      ),
    );
  }

  Widget _buildContactTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: Colors.blue),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black87,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(height: 1, thickness: 1, indent: 70, endIndent: 20);
  }
}