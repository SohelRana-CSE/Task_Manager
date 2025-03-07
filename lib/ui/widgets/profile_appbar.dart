import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/update_profile_screen.dart';

import '../utility/app_colors.dart';

AppBar profileAppBar(context, [bool fromUpdateProfile = false]) {
  return AppBar(
    backgroundColor: AppColors.themeColor,
    leading: GestureDetector(
      onTap: () {
        if (fromUpdateProfile) {
          return;
        }
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const UpdateProfileScreen(),
          ),
        );
      },
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
            // radius: 10,
            // child: NetworkCachedImage(
            //   url: '',
            // ),
            ),
      ),
    ),
    title: GestureDetector(
      onTap: () {
        if (fromUpdateProfile) {
          return;
        }
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const UpdateProfileScreen(),
          ),
        );
      },
      child: const Column(
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
    ),
    actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
  );
}
