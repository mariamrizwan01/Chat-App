import 'package:chat/Screens/ChatDetails.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  final List<Map<String, String>> chats = [
    {
      'name': 'Naxient',
      'message': 'Your order just arrived!',
      'time': '18:00',
      'avatar': "assets/images/Photo Profile.png",
    },
    {
      'name': 'hawkins',
      'message': 'Your order just arrived!',
      'time': '16:00',
      'avatar': "assets/images/Photo Profile (3).png",
    },
    {
      'name': "leslie Alexander",
      'message': "Your order just arrived!",
      'time': '20:01',
      'avatar': "assets/images/Photo Profile (1).png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: IconButton.outlined(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ChatDetails()));
          },
          icon: Icon(
            Icons.message_outlined,
            color: Colors.pink,
          ),
          alignment: Alignment.bottomRight,
          iconSize: 26,
          ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Chat',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  final chat = chats[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 24.0,
                              backgroundImage: AssetImage(chat['avatar']!),
                            ),
                            SizedBox(width: 12.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    chat['name']!,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    chat['message']!,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              chat['time']!,
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
