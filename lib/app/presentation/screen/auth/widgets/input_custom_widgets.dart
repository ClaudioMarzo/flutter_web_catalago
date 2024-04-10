import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/color_style.dart';

class inputCustomWidgets extends StatefulWidget {
  final IconData icon;
  final bool isPassword;
  final FocusNode focus;
  final String inputText;
  final TextInputType textinputType;
  final TextEditingController textController;

  const inputCustomWidgets({
    super.key,
    required this.icon,
    required this.focus,
    required this.inputText,
    required this.isPassword,
    required this.textinputType,
    required this.textController,
  });

  @override
  State<inputCustomWidgets> createState() => _inputCustomWidgetsState();
}

class _inputCustomWidgetsState extends State<inputCustomWidgets> {
  bool _obscureText = true;
  bool _showIcon = false;

  @override
  void initState() {
    super.initState();
    widget.textController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    widget.textController.removeListener(_onTextChanged);
    super.dispose();
  }

  void _onTextChanged() {
    setState(() => _showIcon = widget.textController.text.isNotEmpty);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: widget.focus,
      autofocus: true,
      controller: widget.textController,
      keyboardType: widget.textinputType,
      cursorColor: ColorStyle.i.black,
      textInputAction: TextInputAction.next,
      obscureText: widget.isPassword ? _obscureText : false,
      // onChanged: onChanged,
      // onSubmitted: (value) {
      //   textFocusNodeEmail.unfocus();
      //   FocusScope.of(context).requestFocus(textFocusNodeEmail);
      // },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20.0),
        hintText: widget.inputText,
        suffixIcon: widget.isPassword && _showIcon
            ? IconButton(
                icon: Align(
                  widthFactor: 2.4,
                  child: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: ColorStyle.i.lightgray,
                    size: 23,
                  ),
                ),
                onPressed: () => setState(() => _obscureText = !_obscureText),
              )
            : Align(
                widthFactor: 3.0,
                child: Icon(
                  widget.icon,
                  color: ColorStyle.i.lightgray,
                  size: 23,
                ),
              ),
      ),
    );
  }
}
