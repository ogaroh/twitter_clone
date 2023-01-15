import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/constants/colors.dart';
import 'package:mobile/theme.dart';
import 'package:mobile/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routName = '/';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const DrawerWidget(),
        // extendBodyBehindAppBar: true,

        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(builder: (context) {
                    return GestureDetector(
                      onTap: (() {
                        Scaffold.of(context).openDrawer();
                      }),
                      child: const CircleAvatar(
                        backgroundColor: kBlack,
                      ),
                    );
                  }),
                  SvgPicture.asset(
                    'assets/svgs/twitter_logo.svg',
                    height: 30,
                  ),
                  IconButton(
                    icon: const Icon(
                      CupertinoIcons.sparkles,
                      color: kBlack,
                    ),
                    onPressed: (() {
                      showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: ((context) {
                            return Container(
                              padding: const EdgeInsets.all(20),
                              height: MediaQuery.of(context).size.height * 0.4,
                              decoration: BoxDecoration(
                                  color: kWhite,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Your timeline',
                                    style: myHeader1Style,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  RichText(
                                      text: const TextSpan(
                                          style: TextStyle(
                                              color: kBlack, fontSize: 14),
                                          text:
                                              'Choose how you want to see your timeline. Make more changes in your ',
                                          children: [
                                        TextSpan(
                                            text: 'Content preferences',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                color: kBlack,
                                                fontWeight: FontWeight.bold))
                                      ])),
                                  ListTile(
                                    leading:
                                        const Icon(CupertinoIcons.sparkles),
                                    title: const Text('For you'),
                                    subtitle:
                                        const Text('Show recommended tweets'),
                                    trailing: Radio(
                                        value: true,
                                        groupValue: null,
                                        onChanged: ((value) {})),
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.history),
                                    title: const Text('Latest'),
                                    subtitle: const Text(
                                        'Show the newest tweets from accounts you follow'),
                                    trailing: Radio(
                                        value: true,
                                        groupValue: null,
                                        onChanged: ((value) {})),
                                  )
                                ],
                              ),
                            );
                          }));
                    }),
                  )
                ],
              ),
            ),
            const Center(child: Text('home')),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: kBlack,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.mic), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
            ]),
        floatingActionButton: FloatingActionButton(
            backgroundColor: kBrandMain,
            onPressed: (() {}),
            child: const Icon(Icons.add)),
      ),
    );
  }
}
