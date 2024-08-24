import 'package:flutter/material.dart';

class ChatDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios, 
        color: Colors.black,
        ),
        title: Text("Chat", 
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: 
                  AssetImage("assets/images/Photo Profile.png"), 
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Naxient',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Online',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink[50],  
            ),
            child: Center(
              child: Icon(
                Icons.phone,
                color: Colors.pink, 
              ),
            ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                Message(
                  text: 'Just to order',
                  isSender: false,
                ),
                Message(
                  text: 'Okay, for what level of spiciness?',
                  isSender: true,
                ),
                Message(
                  text: 'Okay, wait a minute 👍',
                  isSender: false,
                ),
                Message(
                  text: 'Okay I\'m waiting 👍',
                  isSender: true,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Send message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.pink),
                  onPressed: () {
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Message extends StatelessWidget {
  final String text;
  final bool isSender;

  const Message({required this.text, required this.isSender});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: isSender ? Colors.grey[300] : Colors.grey[300],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
            bottomLeft: isSender ? Radius.circular(20.0) : Radius.zero,
            bottomRight: isSender ? Radius.zero : Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
