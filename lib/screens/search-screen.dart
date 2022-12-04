import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/constats/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: _getSearchBox(),
              ),
              SliverToBoxAdapter(
                child: _getCategory(),
              ),
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: index <= 7
                            ? Image.asset(
                                'assets/images/image${index + 1}.png',
                                fit: BoxFit.cover,
                              )
                            : Image.asset(
                                'assets/images/image6.png',
                                fit: BoxFit.cover,
                              ),
                      ),
                    );
                  },
                  childCount: 16,
                ),
                gridDelegate: SliverQuiltedGridDelegate(
                  repeatPattern: QuiltedGridRepeatPattern.inverted,
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  pattern: [
                    QuiltedGridTile(2, 1),
                    QuiltedGridTile(2, 2),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _getSearchBox() {
  return Container(
    margin: EdgeInsets.only(top: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(13),
      color: Color.fromRGBO(39, 43, 64, 1),
    ),
    child: Row(
      children: [
        SizedBox(width: 15),
        Image.asset('assets/images/search.png'),
        SizedBox(width: 11),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: 'Search...',
              hintStyle: TextStyle(
                fontFamily: 'GB',
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
        ),
        //Spacer(),
        Image.asset('assets/images/scan.png'),
        SizedBox(width: 15),
      ],
    ),
  );
}

Widget _getCategory() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20),
    height: 24,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(39, 43, 64, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            width: 60,
            //height: 23,
            child: Center(
              child: Text(
                'Account $index',
                style: TextStyle(
                  fontFamily: 'GM',
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}

Widget _getCustomGrid() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18.0),
    child: GridView.custom(
      gridDelegate: SliverQuiltedGridDelegate(
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        crossAxisCount: 3,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: [
          QuiltedGridTile(2, 1),
          QuiltedGridTile(2, 2),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: sorkhabi),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: index <= 7
                ? Image.asset(
                    'assets/images/image${index + 1}.png',
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    'assets/images/image6.png',
                    fit: BoxFit.cover,
                  ),
          ),
        );
      }, childCount: 16),
    ),
  );
}
