import 'package:chat_app/model/user.dart';
import 'package:flutter/material.dart';
class ActiveChatWidget extends StatelessWidget {
  final User user;
  const ActiveChatWidget({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(user.image??""),
            ),

            Visibility(
              visible: user.status??false,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.green,
              ),
            )
          ],
        ),
        SizedBox(width: 10,),
        Text(user.name?.split(' ').first??'',style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
