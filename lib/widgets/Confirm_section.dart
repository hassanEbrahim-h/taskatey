import 'package:flutter/material.dart';


class ConfirmSection extends StatelessWidget {
  const ConfirmSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),


        Container(
          width: double.infinity,
          height: 1,
          color: Colors.deepPurple,
        ),

        const SizedBox(height: 20),


        TextField(
          decoration: InputDecoration(
            hintText: 'Your Name',
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.deepPurple),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
              const BorderSide(color: Colors.deepPurple, width: 2),
            ),
          ),
        ),

        const SizedBox(height: 20),


        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Confirm',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}