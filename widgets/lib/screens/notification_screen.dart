import 'package:flutter/material.dart';
import 'package:widgets/components/globalappbarcomponent.dart';
import 'package:widgets/components/noification_component.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() =>
      _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  final List<Map<String, dynamic>> notifications = [
    {
      "username": "John Doe",
      "message": "liked your post.",
      "time": "5 minutes ago",
      "type": "like",
      "read": false,
    },
    {
      "username": "Jane Smith",
      "message": "commented on your post.",
      "time": "10 minutes ago",
      "type": "comment",
      "read": false,
    },
    {
      "username": "Michael Cruz",
      "message": "sent you a friend request.",
      "time": "20 minutes ago",
      "type": "friend_request",
      "read": true,
    },
    {
      "username": "Sarah Williams",
      "message": "shared your post.",
      "time": "1 hour ago",
      "type": "share",
      "read": true,
    },
    {
      "username": "Stewart Somos",
      "message": "mentioned you in a post.",
      "time": "12 minutes ago",
      "type": "mention",
      "read": true,
    },
    {
      "username": "Sarah Jane",
      "message": "liked your story.",
      "time": "6 hours ago",
      "type": "like",
      "read": false,
    },
    {
      "username": "John David",
      "message": "Shared a post.",
      "time": "58 minutes ago",
      "type": "share",
      "read": false,
    },
    {
      "username": "Charlie Kirk",
      "message": "Liked your post.",
      "time": "7 hours ago",
      "type": "like",
      "read": false,
    },
    {
      "username": "Kai Cenat",
      "message": "mentioned you in a comment.",
      "time": "1 hour ago",
      "type": "mention",
      "read": true,
    },
    {
      "username": "Vic Soto",
      "message": "mentioned you in a comment.",
      "time": "5 minutes ago",
      "type": "mention",
      "read": true,
    },
     {
      "username": "Lei Marterior",
      "message": "Followed you.",
      "time": "23 minutes ago",
      "type": "follow",
      "read": true,
    },
     {
      "username": "Rico Yan",
      "message": "Followed you.",
      "time": "54 minutes ago",
      "type": "follow",
      "read": true,
    },
  ];

  IconData _iconForType(String? type) {
    switch (type) {
      case "like":
        return Icons.thumb_up_sharp;

      case "comment":
        return Icons.comment;

      case "friend_request":
        return Icons.person_add;

      case "share":
        return Icons.share;

      case "mention":
        return Icons.alternate_email;

      case "follow":
        return Icons.person;

      default:
        return Icons.notifications;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Globalappbarcomponent(),

      body: ListView.builder(
        itemCount: notifications.length,

        itemBuilder: (context, index) {
          final notification = notifications[index];

          return NotificationComponent(
            username: notification["username"],
            message: notification["message"],
            time: notification["time"],
            icon: _iconForType(notification["type"]),
            selected: !(notification["read"] as bool? ?? false),
          );
        },
      ),
    );
  }
}