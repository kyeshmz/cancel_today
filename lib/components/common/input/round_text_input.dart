import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RoundTextInput extends HookWidget {
  const RoundTextInput({
    super.key,
    required this.name,
    this.hintText,
    this.validator,
    this.inputAction,
    this.autoFocus = false,
    this.autofillHints,
  });

  final String name;
  final String? hintText;
  final TextInputAction? inputAction;
  final FormFieldValidator<String>? validator;
  final bool autoFocus;
  final Iterable<String>? autofillHints;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    useValueListenable(controller);

    return FormBuilderTextField(
      name: name,
      controller: controller,
      autofocus: autoFocus,
      validator: validator,
      textInputAction: inputAction,
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
        hintText: hintText ?? '',
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        suffixIcon: controller.text.isEmpty
            ? Container(
                width: 0,
              )
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
