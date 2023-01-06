import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/theme.dart';

class RowAppBar extends StatelessWidget {
  const RowAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              child: TextButton(
                onPressed: (() {
                  Navigator.of(context).pop();
                }),
                child: Text(
                  'Cancel',
                  style: textButtonStyle1,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: SvgPicture.asset(
              'assets/svgs/twitter_logo.svg',
              height: 20,
            ),
          ),
        ],
      ),
    );
  }
}
