import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/charm.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/maki.dart';
import '../../home/views/widget/bg_color.dart';
import '../controllers/full_screen_controller.dart';
import 'widget/bottom_nav_items.dart';

class FullScreenView extends GetView<FullScreenController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        body: customContainer(
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: white,
                        )),
                    Spacer(),
                    Text(
                      "Lamborgini",
                      style: Lato(cl: white, fw: FontWeight.bold, sz: 30),
                    ),
                    Spacer(),
                  ],
                ),
                height30,
                Image.network(
                    "https://www.supercars.net/blog/wp-content/uploads/2022/01/lamborghini-aventador-lp-780-4-ultimae.jpg"),
                height30,
                FullScreenMainHeading(title: "Details"),
                height10,
                Text(
                  "Its Lamporgini Aventure in 2014.vechile is in good condition and so scratch .All papers are clear and insurance upto january 30 2025. km run upto 20,000.",
                  style: Lato(
                    cl: grey,
                  ),
                ),
                height30,
                FullScreenMainHeading(title: "Keep in mind"),
                FullScreenDetails(
                  policyColor: blue,
                  title: "Driving Liscence Mandatory",
                  icon: Bi.card_checklist,
                ),
                FullScreenDetails(
                  policyColor: blue,
                  policyUrl: '          See Details',
                  title: "Fare&fuel Policy",
                  icon: Maki.fuel,
                ),
                FullScreenDetails(
                  policyColor: blue,
                  policyUrl: '          See Details',
                  title: "Cancellation Policy",
                  icon: Ic.outline_cancel,
                ),
                FullScreenDetails(
                  policyColor: grey,
                  policyUrl:
                      'I hereby agree to the terms and conditions of the lease Agreement with Host',
                  title: "Agreement Policy",
                  icon: Charm.notes_tick,
                ),
                height30,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: FullScreenMainHeading(title: "₹ 25000 /hr"),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: size.height / 4,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.stack.imgur.com/HILmr.png")),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: size.height / 5,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                bgColor1,
                bgColor2,
                bgColor1,
              ],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            children: [
              height10,
              height10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FullViewCallAndChat(
                    colorx: darkBlue,
                    function: () {},
                    title: 'Chat',
                    icon: Icons.message,
                  ),
                  FullViewCallAndChat(
                    colorx: darkBlue,
                    function: () {},
                    title: 'call',
                    icon: Icons.call,
                  ),
                ],
              ),
              height10,
              height10,
              
              Container(
                height: size.height / 20,
                width: size.width / 1.2,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 167, 250),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "Book Now",
                    style: gfontsubtitlefont(
                      cl: white,
                      fw: FontWeight.bold,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


