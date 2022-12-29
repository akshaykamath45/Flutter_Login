import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/category_dummy_data.dart';
import 'home_widget.dart';

class CategoryMaker extends StatelessWidget {
  const CategoryMaker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return             SizedBox(
      height: 100,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: CategoryList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                },
                child: HomeWidget(
                    height: 80,
                    width: 130,
                    // isSelected:
                    // current == index ? true : false,
                    padding:
                    EdgeInsets.symmetric(horizontal: 10),
                    child: Text(CategoryList[index],
                        style: GoogleFonts.notoSerif(
                          // color: current == index ? white : black,
                            color: Colors.black,
                            wordSpacing: 0.1,
                            letterSpacing: 0.1,
                            fontSize: 18,
                            fontWeight: FontWeight.w700))),
              ),
            );
          }),
    );

  }
}
