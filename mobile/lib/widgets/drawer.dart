import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/constants/colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  Widget tileWidgets(IconData icona, String label, VoidCallback callback) {
    return ListTile(
      onTap: callback,
      leading: Icon(
        icona,
        size: 25,
        color: kBlack,
      ),
      title: Text(
        label,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
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
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.6))),
                        child: const Icon(Icons.add_outlined)))
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
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView(
              children: [
                tileWidgets(Icons.person, 'Profile', () {}),
                tileWidgets(Icons.topic, 'Topics', () {}),
                tileWidgets(Icons.bookmark, 'Bookmarks', () {}),
                tileWidgets(Icons.list, 'Lists', () {}),
                tileWidgets(Icons.person_add, 'Twitter Circle', () {}),
                const Divider()
              ],
            ))
          ],
        ),
      ),
    );
  }
}
