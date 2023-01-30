import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/constants/colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Account info',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: (() {
                    Scaffold.of(context).closeDrawer();
                  }),
                  icon: const Icon(Icons.close)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                backgroundColor: kBlack,
              ),
              IconButton(
                  onPressed: (() {}),
                  icon: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.6))),
                      child: Icon(Icons.add_outlined)))
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'orket',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text(
            '@_orket',
            style: TextStyle(color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Text(
                  '188',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'following',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '66',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'followers',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
