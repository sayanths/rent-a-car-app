import 'package:flutter/material.dart';
import '../../../../constants/colors/colors.dart';
import '../../../../constants/fonts/fonts.dart';

class ViewAllGridView extends StatelessWidget {
  const ViewAllGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height / 3.6,
          width: size.width / 2,
          decoration: BoxDecoration(
            color: Colors.white10,
            image: DecorationImage(
              image: NetworkImage(
                "https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/models_gw/images-s/S2_502326_M.jpg",
              ),
              fit: BoxFit.cover,
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
                    size: 30.0,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Stack(
                  children: [
                    Container(
                      height: 40,
                      width: size.width / 2,
                      decoration: BoxDecoration(
                        color: black,
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
