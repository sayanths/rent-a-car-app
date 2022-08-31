import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/view_all_controller.dart';

class ViewAllView extends GetView<ViewAllController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ViewAllView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ViewAllView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
