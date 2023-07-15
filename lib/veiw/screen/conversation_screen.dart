import 'package:chat_app/model/user.dart';
import 'package:chat_app/veiw/companents/conversation/active_chat_widget.dart';
import 'package:chat_app/veiw/companents/conversation/conversation_widget.dart';
import 'package:chat_app/veiw_model/bloc/conversation_cubit/conversation_cubit.dart';
import 'package:chat_app/veiw_model/bloc/conversation_cubit/conversation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class conversationScreen extends StatelessWidget {
  const conversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConversationCubit,ConversationState>(
      listener: (context, state) {

      },
      builder: (context, state) {
      var cubit=ConversationCubit.get(context);
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const CircleAvatar(
            backgroundImage: NetworkImage('https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg'),
          ),
          title: const Text('Chats',style: TextStyle(color: Colors.white)),
          centerTitle: false,
          actions: const [
            CircleAvatar(
              backgroundColor: Colors.white30,
              child: Icon(Icons.camera_alt,color: Colors.white),
            ),
            SizedBox(width: 10,),
            CircleAvatar(
              backgroundColor: Colors.white30,
              child: Icon(Icons.edit,color: Colors.white),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon:Icon(Icons.search,color: Colors.white24),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.white24),
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(height: 120,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                      itemBuilder:(context, index) => ActiveChatWidget(user: cubit.users[index],),
                      separatorBuilder: (context, index) => SizedBox(width: 5),
                      itemCount:cubit.users.length)),
              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => ConversationWidget(user:cubit.users[index]), separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                ), itemCount: 6),
              )

            ],
          ),
        ),
      );},
    );
  }
}
