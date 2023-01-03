import 'package:flutter/material.dart';
import 'package:mobile/theme.dart';
import 'package:mobile/widgets/reusable/row_app_bar.dart';
import 'package:mobile/widgets/reusable/underlined_textfield.dart';

class CreateAccountScreen extends StatelessWidget {
  static const routeName = '/createAccountScreen';
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    final dateController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: Column(
              children: [
                const RowAppBar(),
                Text(
                  'Create your account',
                  style: myHeader1Style,
                ),
                const SizedBox(
                  height: 30,
                ),
                UnderlinedTextIeld('Name', nameController),
                UnderlinedTextIeld('Phone', phoneController),
                UnderlinedTextIeld('Date of birth', dateController),
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(23.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Spacer(),
            // TextButton(
            //   onPressed: (() {}),
            //   child: Text(
            //     'Forgot password?',
            //     style: textButtonStyle1,
            //   ),
            // ),
            ElevatedButton(
                style: darkElevatedDisabledButtonStyle,
                onPressed: (() {}),
                child: const Text('Next'))
          ]),
        ),
      ),
    );
  }
}
