// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:dash_chat_2/dash_chat_2.dart';
// 1
// class chatPage extends StatefulWidget {
//   const chatPage({Key? key}) : super(key: key);
//
//   @override
//   _ChatPageState createState() => _ChatPageState();
// }
//
// class _ChatPageState extends State<chatPage> {
//   final ChatUser _currentUser = ChatUser(id: '1', firstName: 'tuqa', lastName: 'kamel');
//   final ChatUser _gptChatUser = ChatUser(id: '2', firstName: 'chat', lastName: 'gpt');
//
//   List<ChatMessage> _messages = <ChatMessage>[];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black26,
//         title: Text(
//           'Your supporter',
//             style:TextStyle(
//                 fontSize: 15,
//                 fontFamily: 'Poppins-Regular',
//                 fontWeight: FontWeight.w400,
//                 color: Color.fromRGBO(39, 56, 123, 1)
//             )
//         ),
//       ),
//       body: DashChat(
//         currentUser: _currentUser,
//         onSend: _sendMessage,
//         messages: _messages,
//         messageOptions: const MessageOptions(
//           currentUserContainerColor: Colors.black,
//           containerColor: Colors.grey,
//           textColor: Colors.white,
//         ),
//       ),
//     );
//   }
//
//   Future<void> _sendMessage(ChatMessage message) async {
//     setState(() {
//       _messages.insert(0, message);
//     });
//
//     var response = await http.post(
//       Uri.parse('http://127.0.0.1:5000/chat'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//       body: jsonEncode(<String, String>{'message': message.text}),
//     );
//
//     if (response.statusCode == 200) {
//       var data = jsonDecode(response.body);
//       // Customizing responses based on patterns
//       switch (message.text.toLowerCase()) {
//         case 'hello':
//           _addGPTMessage(data["Hello, let's start to know the psychological state you are suffering from. First, how would you describe your mood lately?, Let's start with some questions to help us diagnose your psychological condition. First, how would you describe your mood lately?"]);
//           break;
//         case 'hello, i need your help':
//           _addGPTMessage(data['response']);
//           break;
//         case 'i feel sad':
//           _addGPTMessage(data['response']);
//           break;
//         case 'i feel empty':
//           _addGPTMessage(data['response']);
//           break;
//         case 'i feel hopeless and lonely most of the time':
//           _addGPTMessage(data['response']);
//           break;
//         default:
//           _addGPTMessage("I'm sorry, I don't understand.");
//           break;
//       }
//     } else {
//       print('Failed to load response');
//     }
//   }
//
//   void _addGPTMessage(String response) {
//     setState(() {
//       _messages.insert(0, ChatMessage(text: response, user: _gptChatUser, createdAt: DateTime.now()));
//     });
//   }
//
//
// }
