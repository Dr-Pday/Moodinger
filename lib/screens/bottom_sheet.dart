import 'dart:ui';
import 'package:flutter/material.dart';

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
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 32),
              child: GridView.builder(
                controller: scrollController,
                itemCount: 30,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 23,
                    mainAxisSpacing: 46),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: Container(
                            child: Image.asset(
                              'assets/images/erfan_onagh.png',
                              fit: BoxFit.cover,
                            ),
                            height: 39,
                            width: 40,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Erfan',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontFamily: 'GB'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
