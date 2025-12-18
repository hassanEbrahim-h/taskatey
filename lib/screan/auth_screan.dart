


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../widgets/Confirm_section.dart';
import '../widgets/app_bottom.dart';
 class Authscrean extends StatefulWidget {
  const Authscrean({super.key});

  @override
  State<Authscrean> createState() => _AuthscreanState();
}

class _AuthscreanState extends State<Authscrean> {
  final ImagePicker picker = ImagePicker();
  XFile? photo;

  void pickImage(ImageSource source) async {
    final XFile? image = await picker.pickImage(source: source);

    if (image != null) {
      setState(() {
        photo = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              CircleAvatar(
                radius: 110,
                backgroundColor: Colors.blueGrey,
                backgroundImage:
                photo != null ? FileImage(File(photo!.path)) : null,
                child: photo == null
                    ? Icon(
                  Icons.person,
                  size: 190,
                  color: Colors.deepPurple,
                )
                    : null,
              ),

              const SizedBox(height: 20),


              AppBottom(
                title: "Upload from Camera",
                onPressed: () {
                  pickImage(ImageSource.camera);
                },
              ),

              const SizedBox(height: 15),


              AppBottom(
                title: "Upload from Gallery",
                onPressed: () {
                  pickImage(ImageSource.gallery);
                },



              ),
              ConfirmSection(),
            ],
          ),
        ),
      ),
    );
  }
}