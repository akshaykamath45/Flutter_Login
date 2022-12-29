import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smokey_dough/constants/colors.dart';

class MenuCard extends StatelessWidget {
  // const MenuCard({Key? key}) : super(key: key);
  final String name;
  final String description;
  final int price;
  final String img_path;

  const MenuCard({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.img_path,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/menu_item', arguments: {
          'name': name,
          'description': description,
          'price': price
        });
      },
      child: Container(
        //175 pixels on hieght of 811.2 pixels
        width:MediaQuery.of(context).size.height * 0.216 ,
        //255 pixels on 811.2 px
        height: MediaQuery.of(context).size.height * 0.314,
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.008,
          left: MediaQuery.of(context).size.height * 0.008,
          right: MediaQuery.of(context).size.height * 0.008,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36),
            color: Colors.black),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              img_path,
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.height * 0.14,
            ),
            Text(name,
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,

                )),
            SizedBox(height: MediaQuery.of(context).size.height * 0.008),
            Text(
              description,
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.height * 0.010,
                color: Colors.white,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.009),
            //  PRICE TAG
            Container(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height * 0.02),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(36)),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: white,
                    boxShadow: [
                      BoxShadow(
                          color: primaryColor.withOpacity(0.2),
                          blurRadius: 200,
                          spreadRadius: 2,
                          offset: Offset(8, 4)),
                    ]),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.04),
                      child: Text(
                        '₹' + price.toString(),
                        style: GoogleFonts.poppins(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.0275,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.04,
                    // ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                      padding: EdgeInsets.zero,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
