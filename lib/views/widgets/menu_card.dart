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
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: 200,
          // height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              //TODO: correct this
              color: Colors.black),
          child: Column(
            children: [
              SizedBox(height: 30.0),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(img_path),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(name,
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )),
                    SizedBox(height: 10.0),
                    Text(
                      description,
                      style: GoogleFonts.poppins(
                        fontSize: 8,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              //  PRICE TAH

              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 25),
                          child: Text('₹ '+price.toString(),
                          style: GoogleFonts.poppins(fontSize: 39,
                          fontWeight: FontWeight.w600),),
                      ),
                      SizedBox(height: 35,),
                      Icon(Icons.add,),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
