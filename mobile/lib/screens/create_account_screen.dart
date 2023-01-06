import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/providers/widgets_providers.dart';
import 'package:mobile/theme.dart';
import 'package:mobile/widgets/reusable/row_app_bar.dart';
import 'package:mobile/widgets/reusable/underlined_textfield.dart';

class CreateAccountScreen extends ConsumerWidget {
  static const routeName = '/createAccountScreen';
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                UnderlinedTextIeld(
                    labelText: 'Name', controller: nameController),
                Consumer(builder: ((context, ref, child) {
                  var createWithPhone = ref.watch(usePhone);

                  return UnderlinedTextIeld(
                      labelText: createWithPhone ? 'Phone number' : 'Email',
                      inputType: ref.watch(textInptTypeProvider),
                      controller: phoneController);
                })),
                UnderlinedTextIeld(
                    labelText: 'Date of birth', controller: dateController),
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(23.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Consumer(builder: ((context, ref, child) {
              var createWithPhone = ref.watch(usePhone);
              return TextButton(
                onPressed: (() {
                  print(createWithPhone);

                  ref.read(usePhone.notifier).state = !createWithPhone;
                }),
                child: Text(
                  createWithPhone ? 'Use email instead' : 'Use phone instead',
                  style: textButtonStyle1,
                ),
              );
            })),
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
