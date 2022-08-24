import 'package:flutter/material.dart';
import 'package:la_vie/modules/blogs_screen/blog_details.dart';
import 'package:la_vie/shared/styles/colors.dart';

void navigateto(context,Widget)=>Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => Widget,
  ),
);

void navigateAndFinish(context, Widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => Widget,
    ),
        (route) => false
);

Widget logoLaVie({
  required double fontSize,
  required double left,
  required double top,
  required double width,
  required double height,
  required FontWeight fontWeight,
}) => Stack(
  children: [
    Text(
      'La Vie',
      style: TextStyle(
        fontFamily: 'Meddon',
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    ),
    Positioned(
      top: top,
      left: left,
      child: Image.asset(
        'assets/images/Planty.png',
        fit: BoxFit.cover,
        width: width ,
        height: height ,
      ),
    ),
  ],
);

Widget defaultTextFormField({
  required valid,
  required bool isPassword,
  required TextInputType type,
  required TextEditingController controll
}) => TextFormField(
  controller: controll,
  obscureText: isPassword,
  validator: valid,
  keyboardType: type,
  // enabled: true,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
  ),
);

Widget myDivider() => Container(
  width: double.infinity,
  height: 1.0,
  color: Colors.grey[300],
);

Widget buildItemNotifications() => Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage('assets/images/Rectangle 1022.png'),
      ),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Joy Arnold left 6 comments on Your Post',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Yesterday at 11:42 PM',
              style: defaultStyle,
            ),
          ],
        ),
      ),
    ],
  ),
);

Widget buildRowCart({
  required function,
  required Minus,
  required Plus,
  required int price,
  required int counter,
}) => Row(
  children: [
    Stack(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 50,
            start: 5,
          ),
          child: Card(
            elevation: 10,
            child: Container(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 10,
                  end: 7,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 50,
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Text(
                      'GARDENIA PLANT',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$price EGP',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        start: 10,
                        end: 20,
                        bottom: 15,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: defaultColor,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: MaterialButton(
                          onPressed: function,
                          child: Text(
                            'Add To Cart',
                            style: TextStyle(
                              color: color,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 10,
          top: 65,
          child: Row(
            children: [
              InkWell(
                onTap: Minus,
                child: Container(
                  color: Color(0xffF7F6F7),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/minus.png',
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                  '$counter'
              ),
              SizedBox(
                width: 8,
              ),
              InkWell(
                onTap: Plus,
                child: Container(
                  color: Color(0xffF7F6F7),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/plus.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          child: Image.asset(
            'assets/images/pp1.png',
            fit: BoxFit.cover,
          ),
          top: -15,
          left: -25,
        ),

      ],
    ),
    SizedBox(
      width: 10,
    ),
    Stack(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 50,
            start: 5,
          ),
          child: Card(
            elevation: 10,
            child: Container(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 10,
                  end: 7,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 50,
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Text(
                      'GARDENIA PLANT',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$price EGP',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        start: 10,
                        end: 20,
                        bottom: 15,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: defaultColor,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: MaterialButton(
                          onPressed: function,
                          child: Text(
                            'Add To Cart',
                            style: TextStyle(
                              color: color,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 10,
          top: 65,
          child: Row(
            children: [
              InkWell(
                onTap: Minus,
                child: Container(
                  color: Color(0xffF7F6F7),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/minus.png',
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                  '$counter'
              ),
              SizedBox(
                width: 8,
              ),
              InkWell(
                onTap: Plus,
                child: Container(
                  color: Color(0xffF7F6F7),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/plus.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          child: Image.asset(
            'assets/images/pp1.png',
            fit: BoxFit.cover,
          ),
          top: -15,
          left: -25,
        ),

      ],
    ),
  ],
);

Widget buildEmptyPageMyCart() => Scaffold(
  body: Stack(
    children: [
      Positioned(
        top: 60,
        left: 15,
        child: Text(
          'My Cart',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 200,
            start: 30,
            end: 30,
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/images/Frame.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Your cart is empty',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Sorry, the keyword you entered cannot be found, please check again or search with another keyword.',
                style: defaultStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    ],
  ),
);

Widget buildPageMyCart({
  required context,
}) => Scaffold(
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
        'My cart',
        style: TextStyle(
            fontWeight: FontWeight.bold,
          fontFamily: 'Inter',
        ),
      ),
    ),
  ),
  body: SingleChildScrollView(
    child: Column(
      children: [
        ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => buildItemCard(),
            separatorBuilder: (context, index) => SizedBox(),
            itemCount: 10
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  Spacer(),
                  Text(
                    '180,000',
                    style: TextStyle(
                        fontSize: 16,
                        color: defaultColor
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Egp',
                    style: TextStyle(
                        fontSize: 20,
                        color: defaultColor
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: defaultColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: MaterialButton(
                  onPressed: (){},
                  child: Text(
                    'Checkout ',
                    style: TextStyle(
                        color: color
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);

Widget defaultButtom({
  required String text,
  required function,
}) => Container(
  width: double.infinity,
  decoration: BoxDecoration(
    color: defaultColor,
    borderRadius: BorderRadius.circular(10),
  ),
  child: MaterialButton(
    onPressed: function,
    child: Text(
      '$text',
      style: TextStyle(
          color: color
      ),
    ),
  ),
);

Widget buildItemCard() => Padding(
  padding: const EdgeInsetsDirectional.only(
      top: 20,
      start: 20,
      end: 20
  ),
  child: Card(
    elevation: 10,
    child: Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Image.asset(
                'assets/images/Rectangle 15.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Cactus plant',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '200 EGP',
                style: TextStyle(
                  fontSize: 15,
                  color: defaultColor,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF8F8F8),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            start: 10,
                            end: 10,
                            top: 15,
                            bottom: 15,
                          ),
                          child: InkWell(
                            child: Icon(
                              Icons.remove,
                              color: defaultColor,
                              size: 15,
                            ),
                          ),
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            start: 10,
                            end: 10,
                            top: 15,
                            bottom: 15,
                          ),
                          child: InkWell(
                            child: Icon(
                              Icons.add,
                              color: defaultColor,
                              size: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Ink(
                    child: Image.asset(
                      'assets/images/delete.png',
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  ),
);

Widget buildItemBlogs({required context}) => Padding(
  padding: const EdgeInsetsDirectional.only(
      top: 20,
      start: 20,
      end: 20
  ),
  child: InkWell(
    onTap: (){
      navigateto(context, BlogDetails());
    },
    child: Card(
      elevation: 10,
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Image.asset(
                  'assets/images/Rectangle 15.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                    end: 20
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '2 days ago',
                      style: TextStyle(
                        fontSize: 15,
                        color: defaultColor,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '5 Tips to treat plants',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'leaf, in botany, any usually',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ),
);


