import 'package:flutter/material.dart';
import 'package:la_vie/shared/styles/colors.dart';

class SearchPlants extends StatelessWidget {

  TextEditingController item = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
                height: 60,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Color(0xffF8F8F8),

                ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: item,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Color(0xff979797),
                      fontWeight: FontWeight.normal,
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 30,
                end: 30,
                top: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recent searchs',
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'GARDENIA PLANT',
                        style: TextStyle(
                            color: Colors.grey
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.close,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'GARDENIA PLANT',
                        style: TextStyle(
                            color: Colors.grey
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.close,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
