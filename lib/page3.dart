// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class mu_3 extends StatefulWidget {
  const mu_3({super.key});

  @override
  State<mu_3> createState() => _mu_3State();
}

class _mu_3State extends State<mu_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 20, 39),
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            leading: Icon(Icons.arrow_back),
            actions: [
              Icon(Icons.share),
              SizedBox(
                width: 6,
              ),
              Icon(Icons.favorite_border_outlined),
              SizedBox(
                width: 6,
              ),
              Icon(Icons.more_horiz_outlined),
              SizedBox(
                width: 7,
              )
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              height: 700,
              decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover,
                      image: AssetImage('assets/images/backk.jpg'))),
            ),

          // 1st Row

          ]))
        ],
      )),
    );
  }
}
