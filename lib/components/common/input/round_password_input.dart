import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RoundPasswordInput extends HookWidget {
  const RoundPasswordInput({
    super.key,
    required this.name,
    this.validator,
    this.inputAction,
    this.autoFocus = false,
    this.autofillHints,
  });

  final String name;
  final TextInputAction? inputAction;
  final FormFieldValidator<String>? validator;
  final bool autoFocus;
  final Iterable<String>? autofillHints;

  @override
  Widget build(BuildContext context) {
    final isObscure = useState(true);

    return FormBuilderTextField(
      name: name,
      autofocus: autoFocus,
      validator: validator,
      textInputAction: inputAction,
      obscureText: isObscure.value,
      autofillHints: autofillHints,
      decoration: InputDecoration(
        fillColor: Theme.of(context).colorScheme.surface,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
        hintText: 'パスワードを入力してください',
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        suffixIcon: IconButton(
          // 文字の表示・非表示でアイコンを変える
          icon: Icon(isObscure.value ? Icons.visibility_off : Icons.visibility),
          // アイコンがタップされたら現在と反対の状態をセットする
          onPressed: () {
            isObscure.value = !isObscure.value;
          },
        ),
      ),
    );
  }
}
