import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user.tile.dart';
import 'package:flutter_crud/data/dummy_users.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};

    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de usuários'),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.add))
          ],
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
        ));
  }
}
