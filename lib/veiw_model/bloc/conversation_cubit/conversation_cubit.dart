import 'package:bloc/bloc.dart';
import 'package:chat_app/model/user.dart';
import 'package:chat_app/veiw_model/bloc/conversation_cubit/conversation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversationCubit extends Cubit<ConversationState>{
  ConversationCubit():super(InitConversationState());
  static ConversationCubit get(context)=>BlocProvider.of<ConversationCubit>(context);
  List<User> users=[
    User(
      name: 'Doaa Magdy',status: false,time: '05:55',lastMessage: 'Welcome',image: 'https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg'
    ),
    User(
        name: 'Ali Ahmed',status: false,time: '12:40',lastMessage: 'Welcome',image: 'https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg'
    ),
    User(
        name: 'Sara Ahmed',status: true,time: '11:55',lastMessage: 'Welcome',image: 'https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg'
    ),
    User(
        name: 'Doaa Magdy',status: false,time: '05:55',lastMessage: 'Welcome',image: 'https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg'
    ),
    User(
        name: 'Ali Ahmed',status: false,time: '12:40',lastMessage: 'Welcome',image: 'https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg'
    ),
    User(
        name: 'Sara Ahmed',status: true,time: '11:55',lastMessage: 'Welcome',image: 'https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg'
    ),
  ];
}