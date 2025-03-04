import 'package:flutter/material.dart';
import '../utility/app_colors.dart';

AppBar profileAppBar() {
  return AppBar(
    backgroundColor: AppColors.themeColor,
    leading: const Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        // radius: 10,
        // child: NetworkCachedImage(
        //   url: '',
        // ),
      ),
    ),
    title: const Column(
      children: [
        Text(
          'Dummy Name',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        Text(
          'email@gmail.com',
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
    actions: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.logout))
    ],
  );
}