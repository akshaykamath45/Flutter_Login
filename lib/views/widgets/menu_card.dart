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
      onTap: (){
        Navigator.pushNamed(
            context,
            '/menu_item',
            arguments: {
              'name': name,
              'description': description,
              'price': price}  );
      },
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            //TODO: correct this
            color: Colors.black),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              img_path,
              height: 150,
              width: 150,
            ),
            Text(name,
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                )),
            SizedBox(height: 10.0),
            Text(
              description,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.white,
              ),
            ),

            //  PRICE TAG

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      '₹ ' + price.toString(),
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Icon(
                    Icons.add,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
