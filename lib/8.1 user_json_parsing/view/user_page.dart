import 'package:flutter/material.dart';
import 'package:json_parsing/8.1%20user_json_parsing/provider/user_provider.dart';
import 'package:provider/provider.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'User Page',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: userProvider.userList.length,
        itemBuilder: (context, index) => ListTile(
          leading: Text(userProvider.userList[index].id.toString()+"."),
          title: Text(userProvider.userList[index].name),
          subtitle: Text(userProvider.userList[index].email),
          trailing: Text(userProvider.userList[index].company.name),
        ),
      ),
    );
  }
}
