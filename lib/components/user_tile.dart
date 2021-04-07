import 'package:flutter/material.dart';
import 'package:flutter_crud/models/user.dart';

class User extends StatelessWidget{
  final User user;

  const UserTile(this.user);

  @override
  Widget build(BuildContext context){
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
    ? CircleAvatar(child: Icon(Icons.person))
    : CircleAvatar(backgroundImage: NetworkImage(user.avatarURL));
    return ListTile(
      leading: avatar,
      title: Text(user.name),
      trailing: (),

    );
  }
}