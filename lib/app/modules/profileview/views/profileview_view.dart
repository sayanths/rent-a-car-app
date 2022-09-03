import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profileview_controller.dart';

class ProfileviewView extends GetView<ProfileviewController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 6, 1, 57),
        body: ListView(
          children: [
            height10,
            Container(
              height: 200,
              width: double.infinity,
              color: Color.fromARGB(255, 6, 1, 57),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        color: white,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "sayanth A",
                            style: gfontsubtitlefont(cl: white, sz: 30),
                          ),
                          height10,
                          height10,
                          Text(
                            "+91 9846401321",
                            style: gfontsubtitlefont(cl: white, sz: 20),
                          )
                        ],
                      ),
                      CircleAvatar(
                        radius: 60,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ClipPath(
              clipper: Clipcliper(),
              child: Container(
                height: size.height / 4,
                width: size.width,
                decoration: BoxDecoration(
                  color: white,
                ),
              ),
            ),
            Container(
              height: size.height / 3,
              decoration: BoxDecoration(
                color: white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ProfileOrderList(
                        function: () {},
                        icon: Icons.category,
                        title: 'My orders'),
                    height30,
                    ProfileOrderList(
                      function: () {},
                      icon: Icons.history,
                      title: ' History',
                    ),
                    height30,
                    ProfileOrderList(
                        function: () {},
                        icon: Icons.add,
                        title: 'Change Address'),
                    height30,
                    ProfileOrderList(
                        function: () {},
                        icon: Icons.person,
                        title: 'Be A Seller'),
                    height30,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileOrderList extends StatelessWidget {
  final Function function;
  final IconData icon;
  final String title;
  ProfileOrderList({
    Key? key,
    required this.function,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function(),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: gfontsubtitlefont(sz: 20, fw: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}

class Clipcliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    // path.quadraticBezierTo(
    //     size.width * 0.5, size.height * -100, size.width, size.height);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
