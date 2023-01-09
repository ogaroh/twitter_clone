import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/constants/colors.dart';
import 'package:mobile/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routName = '/';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: kBlack,
                ),
                SvgPicture.asset(
                  'assets/svgs/twitter_logo.svg',
                  height: 30,
                ),
                IconButton(
                  icon: Icon(
                    CupertinoIcons.sparkles,
                    color: kBlack,
                  ),
                  onPressed: (() {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: ((context) {
                          return Container(
                            padding: EdgeInsets.all(20),
                            height: MediaQuery.of(context).size.height * 0.4,
                            decoration: BoxDecoration(
                                color: kWhite,
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Your timeline',
                                  style: myHeader1Style,
                                ),
                                ListTile(
                                  leading: Icon(CupertinoIcons.sparkles),
                                  title: Text('For you'),
                                  subtitle: Text('Show recommended tweets'),
                                  trailing: Radio(
                                      value: true,
                                      groupValue: null,
                                      onChanged: ((value) {})),
                                ),
                                ListTile(
                                  leading: Icon(Icons.history),
                                  title: Text('Latest'),
                                  subtitle: Text(
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
          backgroundColor: kWhite.withAlpha(200),
        ),
        body: Column(
          children: [
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
