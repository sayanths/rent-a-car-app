import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  final splashController = Get.put(SplashscreenController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 2000),
          curve: Curves.fastLinearToSlowEaseIn,
          width: splashController.a ? size.width : 0,
          height: size.height,
          color: Colors.black,
        ),
        Center(
          child: Text("Super Rent"),
        ),
      ],
    ));
  }
}

class SlideTransitionAnimation extends PageRouteBuilder {
  final Widget page;

  SlideTransitionAnimation(this.page)
      : super(
            pageBuilder: (context, animation, anotherAnimation) => page,
            transitionDuration: Duration(milliseconds: 2000),
            transitionsBuilder: (context, animation, anotherAnimation, child) {
              animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
              );
              return SlideTransition(
                position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
                    .animate(animation),
                textDirection: TextDirection.rtl,
                child: page,
              );
            });
}
// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text('HOME PAGE'),
//           centerTitle: true,
//           systemOverlayStyle:SystemUiOverlayStyle.dark,
//           backgroundColor: Colors.black),
//       body: Center(
//         child: Text(
//           "APP HOME PAGE",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),
//         ),
//       ),
//     );
//   }
// }