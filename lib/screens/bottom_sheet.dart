import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:instagram/constats/colors.dart';

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({this.scrollController, super.key});
  final ScrollController? scrollController;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(36),
        topRight: Radius.circular(36),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
        child: Container(
          color: Color.fromRGBO(255, 255, 255, 0.1),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                              bottom: 22,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            width: 67,
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Share',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'GB',
                                    fontSize: 24),
                              ),
                              Image.asset('assets/images/forward.png'),
                            ],
                          ),
                          SizedBox(height: 32),
                          Container(
                            height: 46,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(13),
                              ),
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/search.png'),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        label: Text(
                                          'Search...',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'GB',
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 32),
                        ],
                      ),
                    ),
                    SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        childCount: 20,
                        (context, index) {
                          return Column(
                            children: [
                              Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: index % 2 == 0
                                      ? Image.asset(
                                          'assets/images/erfan_onagh.png',
                                          fit: BoxFit.cover,
                                        )
                                      : Image.asset(
                                          'assets/images/azadi.png',
                                          fit: BoxFit.cover,
                                        ),
                                ),
                                height: 60,
                                width: 60,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Erfan',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontFamily: 'GB'),
                              ),
                            ],
                          );
                        },
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 100),
                    ),
                    SliverPadding(
                      padding: EdgeInsets.only(
                        top: 120,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 47,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 45.0, vertical: 13),
                      child: Text('Send'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// child: Padding(
//   padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 32),
//   child: GridView.builder(
//     controller: scrollController,
//     itemCount: 30,
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 4, crossAxisSpacing: 23, mainAxisSpacing: 46),
//     itemBuilder: (BuildContext context, int index) {
//       return Container(
//         child: Column(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.all(Radius.circular(15)),
//               child: Container(
//                 child: Image.asset(
//                   'assets/images/erfan_onagh.png',
//                   fit: BoxFit.cover,
//                 ),
//                 height: 39,
//                 width: 40,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Erfan',
//               style: TextStyle(
//                   fontSize: 10,
//                   color: Colors.white,
//                   fontFamily: 'GB'),
//             ),
//           ],
//         ),
//       );
//     },
//   ),
// ),
