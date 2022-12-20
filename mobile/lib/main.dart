import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/screens/log_in_screen.dart';
import 'package:mobile/screens/sign_in_options_screen.dart';
import 'package:mobile/theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ref.watch(themeProvider),
      home: const SignInOptionsScreen(),
      routes: {LoginScreen.routeName: (context) => const LoginScreen()},
    );
  }
}
