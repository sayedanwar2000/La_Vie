import 'package:flutter/material.dart';
import 'package:la_vie/shared/components/components.dart';
import 'package:la_vie/shared/styles/colors.dart';

class Blogs extends StatelessWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Image.asset(
            'assets/images/arrowback.png',
          ),
        ),
        title: Center(
          child: Text(
            'Blogs',
            style: TextStyle(
                fontWeight: FontWeight.bold,
              fontFamily: 'Inter',
            ),
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildItemBlogs(context: context),
          separatorBuilder: (context, index) => SizedBox(),
          itemCount: 10
      ),
    );
  }
}
