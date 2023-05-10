import 'package:activity3/widgets/list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Color(0xFF5927FF),
                Color(0xFF8160EF),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 83),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(59),
                  topRight: Radius.circular(59),
                ),
              ),
              width: 135,
              height: 118,
              child: SvgPicture.asset(
                'images/logo.svg',
                height: 78,
                width: 61,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 220, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bit \nCuckoo",
                    style: GoogleFonts.rubik(fontSize: 34, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "Collect your bit coins",
                      style:
                          GoogleFonts.rubik(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Text(
                    'How Cuckoo will help?',
                    style: GoogleFonts.rubik(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const ListItemWidget(
                      text: "Cuckoo will help you to buy/sell your bit coins"),
                  const ListItemWidget(
                      text: "Cuckoo will help you to set the price tracker"),
                  const ListItemWidget(text: "Cuckoo is faster smart & Sweet"),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Enter your Mobile Number',
                    style: GoogleFonts.rubik(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 53,
                          height: 56,
                          decoration: const BoxDecoration(
                              color: Color(0xffE2DCDC),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              )),
                          child: const Center(
                              child: Text(
                            "91",
                            style: TextStyle(
                                color: Color(0xffE1DDF8), fontSize: 14),
                          ))),
                      Container(
                          width: 208,
                          height: 56,
                          decoration: const BoxDecoration(
                            color: Color(0xffffffff),
                          ),
                          child: const Center(
                              child: Text(
                            "98412012345",
                            style: TextStyle(
                                color: Color(0xffE1DDF8), fontSize: 14),
                          ))),
                      Container(
                          width: 66,
                          height: 56,
                          decoration: const BoxDecoration(
                              color: Color(0xff37E39F),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              )),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_right_alt_outlined,
                              color: Colors.white,
                              size: 35,
                            ),
                          ))
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
