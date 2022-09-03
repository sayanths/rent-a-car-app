import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/profileview_controller.dart';
import 'widget/profile_widget.dart';

class ProfileviewView extends GetView<ProfileviewController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 6, 1, 57),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.bottomCenter,
              begin: Alignment.topLeft,
              colors: [
                bgColor1,
                bgColor2,
                bgColor1,
              ],
            ),
          ),
          child: ListView(
            children: [
              height10,
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.transparent,
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
                          backgroundImage: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/682px-Pierre-Person.jpg"),
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
                      height10,
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.logout),
                        label: Text(
                          "Log out",
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: darkBlue,
                        ),
                      ),
                    ],
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
