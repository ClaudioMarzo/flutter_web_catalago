import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/core/ui/style/color_style.dart';

class ImputCustomWidgets extends StatefulWidget {
  final FocusNode focus;
  final TextInputType textImputType;
  final TextEditingController textController;
  final String imputText;
  final IconData icon;
  final bool isPassword;

  const ImputCustomWidgets({
    super.key,
    required this.focus,
    required this.textImputType,
    required this.textController,
    required this.imputText,
    required this.icon,
    required this.isPassword,
  });

  @override
  State<ImputCustomWidgets> createState() => _ImputCustomWidgetsState();
}

class _ImputCustomWidgetsState extends State<ImputCustomWidgets> {
  final bool _obscureText = true;
  final bool _showIcon = false;

  // @override
  // void initState() {
  //   super.initState();
  //   widget.textController.addListener(_onTextChanged);
  // }

  // @override
  // void dispose() {
  //   widget.textController.removeListener(_onTextChanged);
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: widget.focus,
      autofocus: true,
      controller: widget.textController,
      keyboardType: widget.textImputType,
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
        hintText: widget.imputText,
        suffixIcon: Align(
          widthFactor: 3.0,
          child: widget.isPassword && _showIcon
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: ColorStyle.i.lightgray,
                    size: 23,
                  ),
                  onPressed: () {},
                )
              : Icon(
                  widget.icon,
                  color: ColorStyle.i.lightgray,
                  size: 23,
                ),
        ),
      ),
    );
  }
}
