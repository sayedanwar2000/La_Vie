import 'package:flutter/material.dart';
import 'package:la_vie/shared/components/components.dart';
import 'package:la_vie/shared/styles/colors.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Create New Post',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(
                    spreadRadius: 0.5,
                    color: defaultColor ,
                  ),],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      children: [
                        Icon(
                          Icons.add,
                          size: 40,
                          color: defaultColor,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Add photo',
                          style: TextStyle(
                            color: defaultColor,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Title',
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  gapPadding: 5
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Description',
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    gapPadding: 100
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            defaultButtom(text: 'Post', function: (){}),
          ],
        ),
      ),
    );
  }
}
