import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smokey_dough/data/pizza_dummy_data.dart';
import 'package:smokey_dough/views/widgets/home_widget.dart';
import 'package:smokey_dough/views/widgets/menu_card.dart';
import 'package:smokey_dough/views/widgets/menu_grid_view.dart';
import 'package:smokey_dough/views/widgets/stless_category.dart';

import '../../data/category_dummy_data.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);
  // var h =MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    //size debugging
    var h =MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade300),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          //cart top button
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade300),
              child: IconButton(
                icon: Icon(Icons.card_travel_rounded),
                onPressed: () {},
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        minimum: EdgeInsets.zero,
        top: false,
        child: SingleChildScrollView(
          child: Padding(
            padding:  const EdgeInsets.all(0.0),
            child: Column(
              // padding: EdgeInsets.zero,
              children: [
                //Images
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.35,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/pizza3.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Positioned(
                      // top: -1,
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Container(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.08,
                          // borderRadius: BorderRadius.circular(30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage('assets/images/logo.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.02,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery
                              .of(context)
                              .size
                              .height * 0.015),
                      //TODO font style
                      child: Text(
                        'Menu',
                        style: GoogleFonts.notoSerif(
                          fontSize: MediaQuery
                              .of(context)
                              .size
                              .height * 0.03,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery
                              .of(context)
                              .size
                              .height * 0.003),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        iconSize: MediaQuery
                            .of(context)
                            .size
                            .height * 0.03,
                      ),
                    ),
                  ],
                ),
               //category
                CategoryMaker(),
                /* uncomment   below for grid view*/
                Padding(
                    padding:  const EdgeInsets.all(18.0),
                    child: MenuGrid())



                /*  uncomment belo for single card view */
                // Column(
                //   children: [
                //     MenuCard(name: pizzaData[0].name,
                //         description: pizzaData[2].description,
                //         price: pizzaData[0].price,
                //         img_path: pizzaData[0].images[0])
                //   ],
                // )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
