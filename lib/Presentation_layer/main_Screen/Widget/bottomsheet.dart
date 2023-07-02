import 'package:flutter/material.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.home,
              size: 50,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.chat_rounded,
              size: 50,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.supervised_user_circle,
              size: 50,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
