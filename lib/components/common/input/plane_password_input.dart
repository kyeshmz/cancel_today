import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PlanePasswordInput extends HookWidget {
  const PlanePasswordInput({
    super.key,
    required this.name,
    this.validator,
    this.inputAction,
  });

  final String name;
  final TextInputAction? inputAction;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    final isObscure = useState(true);

    return FormBuilderTextField(
      name: name,
      validator: validator,
      textInputAction: inputAction,
      obscureText: isObscure.value,
      decoration: InputDecoration(
        hintText: '********',
        isDense: true,
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
