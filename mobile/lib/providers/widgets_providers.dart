import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Phone or  email providers CREATE ACCOUNT SCREEN

final usePhone = StateProvider.autoDispose<bool>((ref) {
  return true;
});

final textInptTypeProvider = StateProvider.autoDispose(((ref) {
  final phone = ref.watch(usePhone);

  return phone ? TextInputType.phone : TextInputType.emailAddress;
}));
