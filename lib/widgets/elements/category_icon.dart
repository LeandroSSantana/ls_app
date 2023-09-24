// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ls_app/model/training_type/training_type.dart';
import 'package:ls_app/screens/category/category_screen.dart';

Widget buildCategoryIcon(
    BuildContext context, String label, IconData iconData, TrainingType tipo) {
  return InkWell(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => CategoryScreen(
            categoryName: label,
            tipoId: tipo.id,
          ),
        ),
      );
    },
    child: Container(
      margin: EdgeInsets.only(left: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Color(0xFFD0FC04),
            child: Icon(
              iconData,
              size: 30,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Lato_light',
              fontSize: 14,
            ),
          ),
        ],
      ),
    ),
  );
}
