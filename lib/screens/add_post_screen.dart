import 'package:flutter/material.dart';
import 'package:instagram/constats/colors.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  Color onClick = Colors.white;
  Color onClick2 = Colors.white;
  Color onClick3 = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 65),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: _getHeader(),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 375,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 25.0, bottom: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/erfan.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SliverGrid(
                  delegate: SliverChildBuilderDelegate(childCount: 18,
                      (context, index) {
                    return Container(
                      width: 128,
                      height: 128,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: index <= 6
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/image${index + 1}.png',
                                fit: BoxFit.cover,
                              ),
                            )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/image8.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                    );
                  }),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(bottom: 90),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            height: 83,
            margin: EdgeInsets.only(bottom: 0, left: 0, right: 0),
            decoration: BoxDecoration(
              color: Color(0xff272B40),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 18, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (onClick == sorkhabi) {
                          onClick = Colors.white;
                        } else {
                          onClick = sorkhabi;
                          onClick3 = Colors.white;
                          onClick2 = Colors.white;
                        }
                      });
                    },
                    child: Text(
                      'Draft',
                      style: TextStyle(
                          fontFamily: 'GB', fontSize: 16, color: onClick),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (onClick2 == sorkhabi) {
                          onClick2 = Colors.white;
                        } else {
                          onClick2 = sorkhabi;
                          onClick3 = Colors.white;
                          onClick = Colors.white;
                        }
                      });
                    },
                    child: Text(
                      'Gallery',
                      style: TextStyle(
                          fontFamily: 'GB', fontSize: 16, color: onClick2),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (onClick3 == sorkhabi) {
                          onClick3 = Colors.white;
                        } else {
                          onClick3 = sorkhabi;
                          onClick = Colors.white;
                          onClick2 = Colors.white;
                        }
                      });
                    },
                    child: Text(
                      'Take',
                      style: TextStyle(
                          fontFamily: 'GB', fontSize: 16, color: onClick3),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _getHeader() {
  return Row(
    children: [
      Text(
        'Post',
        style: TextStyle(
          fontFamily: 'GB',
          fontSize: 22,
          color: Colors.white,
        ),
      ),
      SizedBox(width: 15),
      Image.asset('assets/images/dropdown.png'),
      Spacer(),
      Text(
        'Next',
        style: TextStyle(fontFamily: 'GB', fontSize: 16, color: Colors.white),
      ),
      SizedBox(width: 15),
      Image.asset('assets/images/next.png'),
    ],
  );
}
