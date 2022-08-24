import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:la_vie/modules/home/home.dart';
import 'package:la_vie/shared/components/components.dart';
import 'package:la_vie/shared/styles/colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Stack(
        children: [
          Image.asset(
              'assets/images/Rectangle 1022.png',
            fit: BoxFit.cover,
          ),
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.black87,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 35,
              start: 20,
              end: 20,
            ),
            child: Row(
              children: [
                InkWell(
                  child: Image.asset(
                    'assets/images/arrow_back.png',
                    fit: BoxFit.cover,
                  ),
                  onTap: (){
                    navigateAndFinish(context, Home());
                  },
                ),
                Spacer(),
                IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.more_horiz,
                      color: color,
                      size: 30,
                    ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 120
            ),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/Ellipse 105.png'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Mayar Mohamed',
                    style: TextStyle(
                      color: color,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0xffF3FEF1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Image.asset('assets/images/Group 1264.png'),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'You have 30 points',
                                      style: TextStyle(
                                        fontSize: 15
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                                'Edit Profile',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Card(
                              elevation: 10,
                              child: Container(
                                height: 80,

                                decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.black,

                                    )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/images/icon.png'),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Change Name',
                                        style: TextStyle(
                                            fontSize: 15,
                                          color: Color(0xff2F2E2E)
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_forward_outlined,
                                        color: Color(0xff1D592C),
                                        size: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Card(
                              elevation: 10,
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                    color: color,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.black,

                                    )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/images/icon.png'),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Change Email',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff2F2E2E)
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_forward_outlined,
                                        color: Color(0xff1D592C),
                                        size: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
