import 'package:chat_app/model/user.dart';
import 'package:flutter/material.dart';
class ConversationWidget extends StatelessWidget {
  final User user;
  const ConversationWidget({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(user.image??''),
            ),
            if(user.status??false)
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.green,
            )
          ],
        ),
        SizedBox(width: 10,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.name??'',style: TextStyle(color: Colors.white)),
              Text(user.lastMessage??'',style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        Text(user.time??'',style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
