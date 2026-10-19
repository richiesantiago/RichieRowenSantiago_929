import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          
          Stack(
            clipBehavior: Clip.none,
            children: [
              
              Container(
                height: 200,
                width: double.infinity,
                
                child: Image.network(
                  'https://stayinmyrtlebeach.com/wp-content/uploads/2026/01/kozy-getaways-contact-us-hero-1.jpg', // Example city image URL
                  fit: BoxFit.cover,
                ),
              ),
              
              Positioned(
                top: 40,
                right: 10,
                child: Row(
                  children: const [
                    Icon(Icons.menu, color: Colors.white),
                    SizedBox(width: 15),
                    Icon(Icons.edit, color: Colors.white),
                    SizedBox(width: 15),
                    Icon(Icons.search, color: Colors.white),
                    SizedBox(width: 15),
                    Icon(Icons.more_horiz, color: Colors.white),
                  ],
                ),
              ),
              
              Positioned(
                bottom: -50,
                left: 20,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 46,
                    backgroundColor: Colors.blue[200], // Placeholder
                    child: const Icon(Icons.person, size: 50, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 60),

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("John Doe", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const Text("3 Posts | Iloilo City", style: TextStyle(color: Colors.grey)),

                const SizedBox(height: 15),

                
                Row(
                  children: [
                    Expanded(child: ElevatedButton(onPressed: () {}, child: const Text("Add to story"))),
                    const SizedBox(width: 10),
                    Expanded(child: OutlinedButton(onPressed: () {}, child: const Text("Edit profile"))),
                  ],
                ),

                const SizedBox(height: 15),

                
                const Text("Your Locked your Profile. Learn more.", style: TextStyle(color: Colors.blue)),

                const SizedBox(height: 20),

                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text("All", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Photos"),
                    Text("Reels"),
                  ],
                ),
                const Divider(),

                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Personal Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Icon(Icons.edit),
                  ],
                ),

                const SizedBox(height: 10),

                
                ListTile(leading: const Icon(Icons.location_on), title: const Text("Iloilo City, Philppines ")),
                ListTile(leading: const Icon(Icons.home), title: const Text("Pavia, Iloilo")),
                ListTile(leading: const Icon(Icons.cake), title: const Text("January 15, 2000")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
