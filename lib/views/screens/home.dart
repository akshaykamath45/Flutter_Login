import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smokey_dough/data/pizza_dummy_data.dart';
import 'package:smokey_dough/views/widgets/home_widget.dart';
import 'package:smokey_dough/views/widgets/menu_card.dart';
import 'package:smokey_dough/views/widgets/navbar.dart';
import 'package:smokey_dough/views/widgets/pizza_card.dart';
import '../../constants/colors.dart';
import '../../constants/strings.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  List<String> CategoryList = [
    "Burgers",
    "Pizza",
    "Fries",
    "Sandwiches",
    "Salads",
    "Deserts",
    "Dips"
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SafeArea(child: Navbar()),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(
                          builder: (context) => HomeWidget(
                            child: IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                              },
                            ),
                          )),
                      HomeWidget(
                        child: IconButton(
                          icon: Icon(Icons.notifications),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: GoogleFonts.notoSerif(
                                  color: black,
                                  wordSpacing: 0.1,
                                  letterSpacing: 0.1,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700),
                              children: [
                                TextSpan(text: "What do you want \n"),
                                TextSpan(text: "for "),
                                TextSpan(
                                    text: "Dinner",
                                    style: TextStyle(color: primaryColor))
                              ]),
                        ),
                      ],
                    ),
                  ),
                  HomeWidget(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: IconButton(
                            color: notBlack,
                            icon: Icon(Icons.search),
                            onPressed: () {},
                          ),
                          hintText: "Search your Food",
                          hintStyle: GoogleFonts.poppins(),
                          suffixIcon: IconButton(
                            color: primaryColor,
                            icon: Icon(Icons.filter_list_alt),
                            onPressed: () {},
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Categories",
                      style: GoogleFonts.notoSerif(
                          color: black,
                          wordSpacing: 0.1,
                          letterSpacing: 0.1,
                          fontSize: 22,
                          fontWeight: FontWeight.w700)),
                  Column(
                    children: [
                      SizedBox(
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
                                    setState(() {
                                      current = index;
                                    });
                                  },
                                  child: HomeWidget(
                                      height: 80,
                                      width: 130,
                                      isSelected:
                                          current == index ? true : false,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(CategoryList[index],
                                          style: GoogleFonts.notoSerif(
                                              color: current == index
                                                  ? white
                                                  : black,
                                              wordSpacing: 0.1,
                                              letterSpacing: 0.1,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700))),
                                ),
                              );
                            }),
                      ),

                      //Start Menu Items from Here

                      GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return MenuCard(
                              name: pizzaData[index].name,
                              description: pizzaData[index].description,
                              price: pizzaData[index].price,
                              img_path: "assets/images/pizza2.jpg");
                          // return PizzaCardWidget(
                          //   name: pizzaData[index].name,
                          //   description: pizzaData[index].description,
                          //   price: pizzaData[index].price,
                          // );
                        }),
                        itemCount: pizzaData.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.64,
                            mainAxisSpacing: 4,
                            crossAxisSpacing: 6,
                            crossAxisCount: 2),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
