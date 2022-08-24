import 'package:flutter/material.dart';
import 'package:la_vie/shared/components/components.dart';
import 'package:la_vie/shared/styles/colors.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
              'Notification',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildItemNotifications(),
          separatorBuilder: (context, index) => myDivider(),
          itemCount: 10
      ),
    );
  }
}
