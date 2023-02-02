import 'package:cancel_today/components/common/input/round_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AccountPage extends HookConsumerWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<FormBuilderState> fbKey =
        useMemoized(GlobalKey<FormBuilderState>.new, const []);

    Future<void> handleSubmit() async {
      if (fbKey.currentState!.saveAndValidate()) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Text('loading'),
          ),
        );

        final email = fbKey.currentState!.value['email'].toString();
        final password = fbKey.currentState!.value['password'].toString();

        // try {
        //   await authStateMethods.signIn(email, password);
        // } on FirebaseException catch (err) {
        //   ScaffoldMessenger.of(context).clearSnackBars();

        //   ScaffoldMessenger.of(context).showSnackBar(
        //     SnackBar(
        //       behavior: SnackBarBehavior.floating,
        //       content: Text(
        //         err.message.toString(),
        //       ),
        //     ),
        //   );
        // }
      }
    }

    return Scaffold(
      body: FormBuilder(
        key: fbKey,
        child: Column(
          children: [
            const Text('Instagram Information'),
            const RoundTextInput(
              name: 'email',
              hintText: 'Instagram用のメール',
            ),
            const RoundTextInput(
              name: 'password',
              hintText: 'Instagram用のパスワード',
            ),
            TextButton(onPressed: () {}, child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
