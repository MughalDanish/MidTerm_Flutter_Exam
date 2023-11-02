import 'package:flutter/material.dart';

class CartListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friends'),

      ),
      body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: List.generate(10, (index) {
            return buildCartWidget();
          }),
        ),
      ),
      ),
    );
  }

  Widget buildCartWidget() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(

              // image: DecorationImage(
              //   image: AssetImage('assets/images/profile.jpeg'),
              //   fit: BoxFit.cover
              // ),

            ),
              child: Image.network('https://www.shutterstock.com/image-photo/portrait-smiling-red-haired-millennial-260nw-1194497251.jpg')
              ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Muhammad Danish',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'danish123@gmail.com',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



