import 'package:flutter/material.dart';
import 'package:smokey_dough/data/pizza_dummy_data.dart';
import 'package:smokey_dough/views/widgets/pizza_card.dart';
// import '../../constants/strings.dart';
import 'package:smokey_dough/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuItemScreenView extends StatefulWidget {
  const MenuItemScreenView({super.key});

  @override
  State<MenuItemScreenView> createState() => _MenuItemScreenViewState();
}

class _MenuItemScreenViewState extends State<MenuItemScreenView> {
  int noOfItems = 0;
  bool isJain = false;
  String? pizzaSize;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final args = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: notBlack,
          elevation: 0,
          leading: IconButton(
            onPressed: (() {
              Navigator.pop(context);
            }),
            icon: Icon(
              Icons.arrow_back_rounded,
              size: 30,
              color: white,
            ),
          ),
          leadingWidth: 80,
          actions: [
            IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.favorite_border_rounded,
                size: 30,
                color: white,
              ),
            ),
            SizedBox(width: 30),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(20)),
                    // color: notBlack,
                    color: notBlack,
                  ),
                  width: size.width,
                  height: 280,
                  // child: Container(
                  //   width: 50,
                  //   height: 50,
                  //   color:  Colors.amber,
                  //   child: Image(
                  //     image: AssetImage('assets/images/pizza1.png'),
                  //     ),
                  // ),
                  child: Image(
                    image: AssetImage('assets/images/pizza1.png'),
                    // height: 40,
                    // width: 80,
                  ),
                ),
                Positioned(
                  bottom: -30,
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
                    width: size.width - 200,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: (() {
                              setState(() {
                                if (noOfItems != 0) noOfItems--;
                              });
                            }),
                            icon: Icon(
                              Icons.remove,
                              color: notBlack,
                              size: 24,
                            )),
                        // VerticalDivider(width: 10, color: black,),
                        Text(
                          '$noOfItems',
                          style: TextStyle(
                            color: notBlack,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                            onPressed: (() {
                              setState(() {
                                noOfItems++;
                              });
                            }),
                            icon: Icon(
                              Icons.add,
                              color: primaryColor,
                              size: 24,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          '${args['name']}',
                          style: GoogleFonts.poppins(
                            color: notBlack,
                            fontSize: 36,
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                          ),
                        ),
                        trailing: SizedBox(
                          width: 70,
                          child: Row(
                            children: [
                              Icon(
                                Icons.currency_rupee_rounded,
                                color: primaryColor,
                                size: 24,
                              ),
                              Text(
                                '${args['price']}',
                                style: GoogleFonts.nunito(
                                  color: notBlack,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Text(
                                  '3.5',
                                  style: GoogleFonts.nunito(
                                    color: notBlack,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '${args['description']}',
                              style: GoogleFonts.nunito(
                                color: grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: RadioListTile(
                              title: Text(
                                "Jain",
                                style: GoogleFonts.nunito(
                                  fontSize: 16,
                                ),
                              ),
                              value: true,
                              groupValue: isJain,
                              activeColor: primaryColor,
                              visualDensity: VisualDensity(horizontal: -4),
                              onChanged: (value) {
                                setState(() {
                                  isJain = value!;
                                });
                              },
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: RadioListTile(
                              title: Text(
                                "Non-Jain",
                                style: GoogleFonts.nunito(
                                  fontSize: 16,
                                ),
                              ),
                              value: false,
                              groupValue: isJain,
                              activeColor: primaryColor,
                              visualDensity: VisualDensity(horizontal: -4),
                              autofocus: true,
                              onChanged: (value) {
                                setState(() {
                                  isJain = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                        child: Text(
                          'Size',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            // flex: 2,
                            child: Wrap(
                              children: [
                                RadioListTile(
                                  title: Text(
                                    "Small",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                    ),
                                  ),
                                  value: "Small",
                                  groupValue: pizzaSize,
                                  activeColor: primaryColor,
                                  visualDensity: VisualDensity(horizontal: -4),
                                  onChanged: (value) {
                                    setState(() {
                                      pizzaSize = value!;
                                    });
                                  },
                                ),
                                RadioListTile(
                                  title: Text(
                                    "Medium",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                    ),
                                  ),
                                  value: "Medium",
                                  groupValue: pizzaSize,
                                  activeColor: primaryColor,
                                  visualDensity: VisualDensity(horizontal: -4),
                                  autofocus: true,
                                  onChanged: (value) {
                                    setState(() {
                                      pizzaSize = value!;
                                    });
                                  },
                                ),
                                RadioListTile(
                                  title: Text(
                                    "Large",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                    ),
                                  ),
                                  value: "Large",
                                  groupValue: pizzaSize,
                                  activeColor: primaryColor,
                                  visualDensity: VisualDensity(horizontal: -4),
                                  onChanged: (value) {
                                    setState(() {
                                      pizzaSize = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: size.width - 32,
              // padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextButton(
                onPressed: (() {}),
                child: Text(
                  'Add To Cart',
                  style: GoogleFonts.nunito(
                    fontSize: 24,
                    color: white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
