import 'package:flutter/material.dart';

import 'package:widgets/components/newsfeedcomponent.dart';

class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({super.key});

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {

  final List<Map<String, String>> newsfeed = [
    {
      "username": "John Doe",
      "timeposted": "Just now",
      "status": "Having a great day!",
      "likes": "120",
      "comments": "25",
      "shares": "10",
    },
    {
      "username": "Jane Smith",
      "timeposted": "Last 2hours ago",
      "status": "Learning Flutter is fun!",
      "likes": "250",
      "comments": "40",
      "shares": "15",
    },
    {
      "username": "Michael Cruz",
      "timeposted": "Last 5hours ago",
      "status": "Working on my new project.",
      "likes": "89",
      "comments": "12",
      "shares": "4",
    },
    {
  "username": "John Roa",
  "timeposted": "Last 10hours ago",
  "status": "Flutter development today!",
  "likes": "356",
  "comments": "34",
  "shares": "19",
  },
    {
  "username": "Stewart Somos",
  "timeposted": "Last 5weeks ago",
  "status": "I love dogs!",
  "likes": "67",
  "comments": "897",
  "shares": "1",
  },
    {
  "username": "Kylvyn Delos Reyes jr.",
  "timeposted": "Last 5hours ago",
  "status": "Money Money Money!",
  "likes": "2k",
  "comments": "213",
  "shares": "1k",
  },
    {
  "username": "Uncle Dags",
  "timeposted": "A minute ago",
  "status": "Rrrrrrrrrrrrrr!",
  "likes": "5k",
  "comments": "1k",
  "shares": "3k",
  },
    {
  "username": "Spider Man",
  "timeposted": "Just now",
  "status": "New York!",
  "likes": "7k",
  "comments": "2k",
  "shares": "1k",
  },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),

      body: ListView.builder(
        padding: const EdgeInsets.all(10),

        itemCount: newsfeed.length,

        itemBuilder: (context, index) {
          final post = newsfeed[index];

          return Newsfeedcomponent(
            username: post["username"],
            timeposted: post["timeposted"],
            status: post["status"],
            numberoflikes: post["likes"],
            numberofcomments: post["comments"],
            numberofshares: post["shares"],
          );
        },
      ),
    );
  }
}

extension on _NewsfeedScreenState {
  PreferredSizeWidget? GlobalappbarComponent() {
    return null;
  }
}