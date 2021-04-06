import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const users = {...DUMMY_USERS};
    return Scaffold(
      appBar: AppBar( 
        title: Text('Lista de Usuários'),
      ),//AppBar
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx,i) => UserTile(users.values.elementAt(i)),
        ),//ListView.builder
    );//Scaffold
  }
}
