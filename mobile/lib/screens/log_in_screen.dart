import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/theme.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/loginScreen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
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
                    height: 30,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'To get started, first enter your phone, email or @username',
                textAlign: TextAlign.left,
                style: myHeader1Style,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Phone, email, or username',
                    suffixIcon: Icon(
                      Icons.cancel,
                      color: Colors.grey,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            )
          ]),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(23.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextButton(
            onPressed: (() {}),
            child: Text(
              'Forgot password?',
              style: textButtonStyle1,
            ),
          ),
          ElevatedButton(
              style: darkElevatedButtonStyle,
              onPressed: (() {}),
              child: Text('Next'))
        ]),
      ),
    ));
  }
}
