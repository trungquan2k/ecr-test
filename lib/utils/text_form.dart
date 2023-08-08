import 'package:erc_test/core/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class TextFieldInput extends StatelessWidget {
  const TextFieldInput({
    Key? key,
    this.labelText,
    this.hintText,
    this.value,
    this.suffix,
    this.focusNode,
    this.onSaved,
    this.validator,
    this.keyboardType,
    this.autofocus = false,
    this.inputFormatters,
    this.onChanged,
    this.enabled = true,
    this.controller,
  }) : super(key: key);
  final String? labelText, hintText;
  final String? value;
  final Widget? suffix;
  final Function(String?)? onSaved, onChanged;
  final Function(String)? validator;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final bool autofocus, enabled;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    FocusNode node = focusNode ?? FocusNode();
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        style: const TextStyle(fontSize: 16),
        onSaved: onSaved,
        initialValue: value,
        focusNode: node,
        keyboardType: keyboardType,
        autofocus: autofocus,
        inputFormatters: inputFormatters,
        onChanged: onChanged,
        controller: controller,
        enabled: enabled,
        decoration: kDefaultInputDecoration.copyWith(
          // labelText: labelText,
          errorStyle: const TextStyle(color: Colors.red),
          hintText: hintText,
          suffix: suffix,
          // isDense: true,
        ),
        validator: null,
      ),
    );
  }
}
