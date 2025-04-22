// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MessageChatPage(),
//   ));
// }

// class MessageChatPage extends StatefulWidget {
//   @override
//   _MessageChatPageState createState() => _MessageChatPageState();
// }

// class _MessageChatPageState extends State<MessageChatPage> {
//   final List<Message> _messages = [];
//   final TextEditingController _messageController = TextEditingController();
//   String _currentUser = 'user1'; // Track the current user
// final FlutterSoundRecorder _recorder = FlutterSoundRecorder();

// void _startVoiceRecording() async {
//   await _recorder.startRecorder(toFile: 'audio.aac');
//   print('Recording started...');
// }

// void _stopVoiceRecording() async {
//   final path = await _recorder.stopRecorder();
//   print('Recording stopped. File saved at: $path');
// }
//   void _sendMessage() {
//     final text = _messageController.text.trim();
//     if (text.isNotEmpty) {
//       setState(() {
//         _messages.add(
//           Message(
//             senderId: _currentUser,
//             content: text,
//             timestamp: DateTime.now(),
//           ),
//         );
//         // Switch the current user after sending a message
//         _currentUser = _currentUser == 'user1' ? 'user2' : 'user1';
//       });
//       _messageController.clear();
//     }
//   }

//   void _startVoiceRecording() {
//     // Placeholder function for starting voice recording
//     print('Start voice recording...');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Chat between User1 and User2')),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               padding: const EdgeInsets.all(8.0),
//               itemCount: _messages.length,
//               itemBuilder: (context, index) {
//                 final message = _messages[index];
//                 final isCurrentUser = message.senderId == 'user1';

//                 // Align messages based on the sender
//                 return Align(
//                   alignment: isCurrentUser
//                       ? Alignment.centerRight
//                       : Alignment.centerLeft,
//                   child: Container(
//                     margin: const EdgeInsets.symmetric(vertical: 4.0),
//                     padding: const EdgeInsets.all(12.0),
//                     decoration: BoxDecoration(
//                       color:
//                           isCurrentUser ? Colors.blue[100] : Colors.grey[300],
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           message.content,
//                           style: TextStyle(fontSize: 16),
//                         ),
//                         SizedBox(height: 4),
//                         Text(
//                           'Sent by: ${message.senderId} at ${message.timestamp.hour}:${message.timestamp.minute}',
//                           style: TextStyle(fontSize: 12, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 // Voice Icon Button
//                 IconButton(
//                   onPressed: _startVoiceRecording,
//                   icon: Icon(Icons.mic, color: Colors.blue),
//                 ),
//                 SizedBox(width: 8),
//                 // Text Input Field
//                 Expanded(
//                   child: TextField(
//                     controller: _messageController,
//                     decoration: InputDecoration(
//                       hintText: 'Type a message...',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 8),
//                 // Send Icon Button
//                 IconButton(
//                   onPressed: _sendMessage,
//                   icon: Icon(Icons.send, color: Colors.blue),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Message Model
// class Message {
//   final String senderId;
//   final String content;
//   final DateTime timestamp;

//   Message(
//       {required this.senderId, required this.content, required this.timestamp});
// }
