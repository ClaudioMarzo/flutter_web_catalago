import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/core/ui/style/text_style.dart';
import 'package:katyfestacatalago/app/core/ui/style/color_style.dart';

class TextFilter extends StatelessWidget {
  final String filtertext;
  final Function() onPressed;
  final bool isSelected;

  const TextFilter({
    super.key,
    required this.filtertext,
    required this.onPressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return ColorStyle.i.pink;
            }
            return Colors.transparent;
          },
        ),
      ),
      child: Text(
        filtertext,
        style: TextStyles.i.textRegular.copyWith(
          fontSize: 20,
          fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
          color: ColorStyle.i.black,
        ),
      ),
    );
  }
}
