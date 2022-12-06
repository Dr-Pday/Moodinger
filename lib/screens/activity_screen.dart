import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/constats/colors.dart';
import 'package:instagram/model/enums/activity_type_enum.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      body: Padding(
        padding: EdgeInsets.only(top: 60.0),
        child: Column(
          children: [
            Container(
              height: 60,
              child: TabBar(
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontFamily: 'GB',
                ),
                labelColor: Colors.white,
                controller: _tabController,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 18),
                indicatorWeight: 2,
                indicatorColor: sorkhabi,
                tabs: [
                  Tab(
                    child: Text(
                      'Following',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'You',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _getSampleList('erfan_onagh'),
                  _getSampleList('erfan'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _getSampleList(String photoName) {
  return CustomScrollView(
    slivers: [
      SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: 1,
          (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 32.0),
                  child: Text(
                    'New',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'GB', fontSize: 18),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: _getRow(ActivityStatus.postLiked,photoName),
                ),
              ],
            );
          },
        ),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: 1,
          (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 32.0),
                  child: Text(
                    'Today',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'GB', fontSize: 18),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: _getRow(ActivityStatus.follow,photoName),
                ),
                _getRow(ActivityStatus.follow,photoName),
              ],
            );
          },
        ),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: 1,
          (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 32.0),
                  child: Text(
                    'This week',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'GB', fontSize: 18),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: _getRow(ActivityStatus.message,photoName),
                ),
                _getRow(ActivityStatus.message,photoName),
                _getRow(ActivityStatus.message,photoName),
              ],
            );
          },
        ),
      ),
    ],
  );
}

Widget _getRow(ActivityStatus status,String photoName) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 18),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 17),
          width: 6,
          height: 6,
          decoration: BoxDecoration(
              color: sorkhabi,
              //borderRadius: BorderRadius.circular(100),
              shape: BoxShape.circle),
        ),
        SizedBox(width: 8),
        _getIcon(photoName),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'ErfanOnagh',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'GB', fontSize: 12),
                ),
                SizedBox(width: 5),
                Text(
                  'Started following',
                  style: TextStyle(color: grey, fontFamily: 'GM', fontSize: 12),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'you',
              style: TextStyle(color: grey, fontFamily: 'GM', fontSize: 12),
            ),
          ],
        ),
        Spacer(),
        _getActivityIcon(status),
      ],
    ),
  );
}

Widget _getIcon(String photoName) {
  return Container(
    padding: EdgeInsets.all(2),
    decoration: BoxDecoration(
      border: Border.all(color: sorkhabi, width: 2),
      borderRadius: BorderRadius.circular(12),
    ),
    width: 40,
    height: 40,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        'assets/images/$photoName.png',
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget _getActivityIcon(ActivityStatus status) {
  switch (status) {
    case ActivityStatus.message:
      return OutlinedButton(
        style: OutlinedButton.styleFrom(
          minimumSize: Size(70, 36),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          side: BorderSide(width: 2, color: grey),
        ),
        onPressed: () {},
        child: Text(
          'Message',
          style: TextStyle(
            fontSize: 12,
            color: grey,
            fontFamily: 'GB',
          ),
        ),
      );

    case ActivityStatus.postLiked:
      return Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        width: 40,
        height: 40,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'assets/images/image4.png',
            fit: BoxFit.cover,
          ),
        ),
      );

    case ActivityStatus.follow:
      return ElevatedButton(
        onPressed: () {},
        child: Text(
          'Follow',
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontFamily: 'GB',
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: sorkhabi,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      );
    default:
      return OutlinedButton(
        style: OutlinedButton.styleFrom(
          minimumSize: Size(70, 36),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          side: BorderSide(width: 2, color: grey),
        ),
        onPressed: () {},
        child: Text(
          'Message',
          style: TextStyle(
            fontSize: 12,
            color: grey,
            fontFamily: 'GB',
          ),
        ),
      );
  }
}
