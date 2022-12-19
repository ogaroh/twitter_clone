import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/constants/colors.dart';

class SignInOptionsScreen extends StatelessWidget {
  const SignInOptionsScreen({
    Key? key,
  }) : super(key: key);

  Widget signInWhiteButton(String svgurl, String text, VoidCallback function) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  side:
                      BorderSide(color: Colors.grey.withOpacity(0.8), width: 1),
                  borderRadius: BorderRadius.circular(30)),
              backgroundColor: kWhite,
              foregroundColor: kBlack),
          onPressed: function,
          icon: SvgPicture.asset(svgurl, height: 20),
          label: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8),
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Text(
              'See what\'s happening',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'in the world right now.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          signInWhiteButton('assets/google.svg', 'Continue with Google', () {}),
          const SizedBox(
            height: 15,
          ),
          signInWhiteButton('assets/apple.svg', 'Continue with Apple', () {}),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey.withOpacity(0.8),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('or'),
                ),
                Expanded(
                    child: Divider(
                  thickness: 1,
                  color: Colors.grey.withOpacity(0.6),
                ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    backgroundColor: kBlack,
                    foregroundColor: kWhite),
                onPressed: (() {}),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 8),
                  child: Text(
                    'Create account',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: Theme.of(context).textTheme.bodySmall!.fontSize),
                text: 'By signing up, you agree to our',
                children: <TextSpan>[
                  const TextSpan(
                      text: ' Terms',
                      style: TextStyle(color: kBrandMain),
                      children: [
                        TextSpan(
                            text: ',', style: TextStyle(color: Colors.black))
                      ]),
                  TextSpan(
                      text: ' Privacy policy',
                      style: const TextStyle(color: kBrandMain),
                      children: [
                        TextSpan(
                            text: ' and',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .fontSize))
                      ]),
                  const TextSpan(
                      text: ' Cookie use',
                      style: TextStyle(color: kBrandMain),
                      children: [
                        TextSpan(
                            text: '.', style: TextStyle(color: Colors.black))
                      ])
                ],
              ),
            ),
          ),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Have an account already?',
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                              text: ' Login',
                              style: TextStyle(color: kBrandMain))
                        ]),
                  ),
                ],
              )),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
