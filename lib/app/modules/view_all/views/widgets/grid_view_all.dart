import 'package:flutter/material.dart';
import '../../../../constants/colors/colors.dart';
import '../../../../constants/fonts/fonts.dart';

class ViewAllGridView extends StatelessWidget {
  const ViewAllGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 230,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white10,
            image: DecorationImage(
              image: NetworkImage(
                "https://mercuryautotransport.com/wp-content/uploads/2021/06/Luxury-Cars-for-2022.jpg",
              ),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 120,
                top: -9,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: red,
                    size: 30,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Stack(
                  children: [
                    Container(
                      height: 30,
                      width: 185,
                      decoration: BoxDecoration(
                        color: blue,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                      ),
                      child: Text(
                        "Benz",
                        style: gfontsubtitlefont(cl: white, sz: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
