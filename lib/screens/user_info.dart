import 'package:flutter/material.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          userListTile('Email', 'Email sub', 0, context),
          userListTile('Phone number', '000000', 0, context),
          userListTile('Shipping address', '222 Street, Suburbs', 0, context),
          userListTile('Join Date', '01/01/2020', 0, context),
        ],
      ),
    );
  }
}

List<IconData> _userTileIcons = [
  Icons.email,
  Icons.phone,
  Icons.local_shipping,
  Icons.watch_later,
  Icons.exit_to_app_rounded,
];

Widget userListTile(
    String title, String subtitle, int index, BuildContext context) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      splashColor: Theme.of(context).splashColor,
      child: ListTile(
        onTap: () {},
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(_userTileIcons[index]),
      ),
    ),
  );
}
