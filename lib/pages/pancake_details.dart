import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/models/diet_model.dart';
import 'package:food_app/pages/appBar.dart';

class PancakeDetails extends StatefulWidget {
  const PancakeDetails({super.key});

  @override
  State<PancakeDetails> createState() => _PancakeDetailsState();
}

class _PancakeDetailsState extends State<PancakeDetails> {

  List<DietModel> diets = [];

  void _getInitialInfo() {
    diets = DietModel.getDiets(); 
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(title: 'Pancake Details'),
      body: Column(
        children: [
          Container(
            height: 220,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color(0xff9DCEFF).withOpacity(0.3),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/pancakes.svg",
                  width: 150,
                  height: 150,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                //     Text(
                //   "Pan Cake",
                //   style: TextStyle(
                //     fontSize: 25,
                //     fontWeight: FontWeight.w400
                //   ),
                // ),
                Text(
                  "\$250",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400
                  ),
                ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Description",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),
                ),
                const Text(
                  "Pancakes are a beloved breakfast dish enjoyed worldwide for their light, fluffy texture and"
                  "delightful flavor.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/eggs.svg",
                          width: 70,
                          height: 70,
                        ),
                        Container(
                           
                          child: const Text(
                          "4 eggs",
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/milk.svg",
                          width: 70,
                          height: 70,
                        ),
                        Container(
                          
                          child: const Text(
                          "1 cup Milk",
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/flour.svg",
                          width: 70,
                          height: 70,
                        ),
                        Container(
                          child: const Text(
                          "2 tsp flour",
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 25,),

                // Delivery and Ratings Section
                Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/map_location.svg",
                          width: 130,
                          height: 130,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Delivery",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            Text(
                              "D45 Amerlands\n mr Hammer Road London"
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Ratings",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: List.generate(5, (index) {
                              return const Icon(
                                Icons.star,
                                size: 24,
                                color: Colors.red,
                              );
                            }),
                          ),
                          const Text(
                            "(59)",
                          ),
                          const SizedBox(width: 20,),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),

                    // Container(
                    //   decoration: BoxDecoration(
                    //     gradient: const LinearGradient(
                    //     colors: [Color(0xff9DCEFF), Color(0xff92A3FD)],
                    //     begin: Alignment.topLeft,
                    //     end: Alignment.bottomRight,
                    //   ),
                    //   borderRadius: BorderRadius.circular(30.0),
                    //   ),
                    //   child: ElevatedButton(onPressed: () {},
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.transparent,
                    //     shadowColor: Colors.transparent,
                    //     minimumSize: const Size(250, 60),              
                    //   ),
                    //   child: const Text(
                    //     "Order Now",
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 20
                    //     ),
                    //   ), 
                    //   ),
                    // ),
                  ],
                ),
                Column(
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                          colors: [Color(0xff9DCEFF), Color(0xff92A3FD)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: ElevatedButton(onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          minimumSize: const Size(250, 60),              
                        ),
                        child: const Text(
                          "Order Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),
                        ), 
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}