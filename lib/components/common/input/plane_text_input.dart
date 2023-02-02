import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PlaneTextInput extends HookWidget {
  const PlaneTextInput({
    super.key,
    required this.name,
    this.hintText,
    this.validator,
    this.inputAction,
  });

  final String name;
  final String? hintText;
  final TextInputAction? inputAction;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {

    final controller = useTextEditingController();
    useValueListenable(controller);

    return FormBuilderTextField(
      controller: controller,
      name: name,
      validator: validator,
      textInputAction: inputAction,
      decoration: InputDecoration(
        hintText: hintText ?? '',
        isDense: true,
        suffixIcon: controller.text.isEmpty
            ? Container(width: 0,)
            : IconButton(
          icon: const Icon(
            Icons.clear,
          ),
          onPressed: controller.clear,
        ),
      ),
    );
  }
}
