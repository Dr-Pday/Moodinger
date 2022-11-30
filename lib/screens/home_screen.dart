import 'dart:ui';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constats/colors.dart';
import 'package:instagram/screens/bottom_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      appBar: AppBar(
        actions: [
          Container(
            //   margin: EdgeInsets.only(right: 17),
            child: IconButton(
                onPressed: () {},
                icon: Image(
                  width: 24,
                  height: 24,
                  image: AssetImage('assets/images/inbox.png'),
                )),
          ),
        ],
        centerTitle: false,
        elevation: 0,
        backgroundColor: backgroundBlue,
        title: Container(
          width: 128,
          height: 24,
          child: Image.asset('assets/images/moodinger2.png'),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return DraggableScrollableSheet(
                            builder: (context, scrollController) {
                          return ShareBottomSheet(
                              scrollController: scrollController);
                        });
                      });
                },
                child: Text('bottom sheet'),
              ),
            ),
            SliverToBoxAdapter(child: _getStoryList2()),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 32,
                    ),
                    _getPost(),
                  ],
                );
              }, childCount: 4),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _getPostsList() {
  return ListView.builder(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: 3,
    itemBuilder: (context, index) {
      return Column(
        children: [
          _getPost(),
          SizedBox(
            height: 32,
          ),
        ],
      );
    },
  );
}

Widget _getStoryList() {
  return Padding(
    padding: const EdgeInsets.only(top: 13.0, left: 17.0),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _getAddStory(),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            //shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _getStoryBox(64, index),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}

Widget _getStoryList2() {
  return Padding(
    padding: const EdgeInsets.only(top: 13.0),
    child: Container(
      height: 88,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        //shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                index == 0 ? _getAddStory() : _getStoryBox(64, index),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}

Widget _getStoryBox(double size, index) {
  return Column(
    children: [
      DottedBorder(
        strokeWidth: 2,
        color: sorkhabi,
        dashPattern: [20, 5],
        borderType: BorderType.RRect,
        radius: Radius.circular(17),
        padding: EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          child: Container(
            child: index == 1
                ? Image.asset(
                    'assets/images/azadi.png',
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    'assets/images/erfan_onagh.png',
                    fit: BoxFit.cover,
                  ),
            height: size - 6,
            width: size - 6,
          ),
        ),
      ),
      SizedBox(height: 10),
      Text(
        'Erfan_Onagh',
        style: TextStyle(fontSize: 10, color: Colors.white, fontFamily: 'GB'),
      ),
    ],
  );
}

Widget _getPost() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(left: 17.0, right: 17.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              DottedBorder(
                strokeWidth: 2,
                color: sorkhabi,
                dashPattern: [20, 5],
                borderType: BorderType.RRect,
                radius: Radius.circular(12),
                padding: EdgeInsets.all(4),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    child: Image.asset(
                      'assets/images/erfan_onagh.png',
                      fit: BoxFit.cover,
                    ),
                    height: 38,
                    width: 38,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ErfanOnagh',
                    style: TextStyle(
                        fontSize: 12, fontFamily: 'GB', color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'عرفان انق برنامه نویس موبایل',
                    style: TextStyle(
                        fontSize: 12, fontFamily: 'GB', color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              InkWell(
                  onTap: () {}, child: Image.asset('assets/images/more.png')),
            ],
          ),
          SizedBox(
            height: 23,
          ),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Container(
                    width: 394,
                    height: 425,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      child: Image.asset(
                        'assets/images/azadi.png',
                        fit: BoxFit.cover,
                      ),
                      width: 394,
                      height: 394,
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 15,
                    child: Image.asset(
                      'assets/images/play.png',
                    ),
                  ),
                ],
              ),
              _getOptionBox(),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _getAddStory() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          border: Border.all(
            width: 2,
            color: grey,
          ),
          color: Colors.transparent,
        ),
        height: 64,
        width: 64,
        child: Icon(
          Icons.add,
          color: sorkhabi,
          size: 40,
        ),
      ),
      SizedBox(height: 10),
      Text(
        'Your Story',
        style: TextStyle(fontSize: 10, color: Colors.white, fontFamily: 'GB'),
      ),
    ],
  );
}

Widget _getOptionBox() {
  return ClipRRect(
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 20, sigmaX: 20),
      child: Container(
        width: 340,
        height: 46,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(255, 255, 255, 0.2),
            Color.fromRGBO(255, 255, 255, 0.5),
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/images/liked.png',
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    '123',
                    style: TextStyle(
                      fontFamily: 'GB',
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/images/comment.png',
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    '20',
                    style: TextStyle(
                      fontFamily: 'GB',
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/share.png',
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/save.png',
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
