// ignore_for_file: unused_local_variable, file_names, unused_import, prefer_const_constructors_in_immutables, non_constant_identifier_names, duplicate_ignore, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:firbase_signup_signin/Constant.dart/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';

class DetailsScreen extends StatelessWidget {
  // ignore: non_constant_identifier_names
  DetailsScreen({super.key, this.Kimage = "", this.Ktitle = "DETAILS"});

  final String? Kimage;
  final String? Ktitle;
  @override
  Widget build(BuildContext context) {
    final KHeight = MediaQuery.of(context).size.height;
    final KWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          Ktitle!,
          style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 1.5),
        ),
        centerTitle: true,
        elevation: 0,
        // scrolledUnderElevation: .5,
        surfaceTintColor: cred,

        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      backgroundColor: cblack2,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: KHeight*.001,),
            Container(
              width: double.infinity,
              height: KHeight*.5,
              child: Image.network(Kimage!)),
            Text("Progress...",
                style: TextStyle(color: Colors.white, fontSize: 25)),
                
            
          ],
        ),
      ),
    );
  }
}
