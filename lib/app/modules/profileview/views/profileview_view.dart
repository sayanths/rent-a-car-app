import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profileview_controller.dart';

class ProfileviewView extends GetView<ProfileviewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfileviewView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfileviewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
