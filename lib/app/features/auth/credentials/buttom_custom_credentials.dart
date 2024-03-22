import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/core/ui/style/color_style.dart';
import 'package:katyfestacatalago/app/core/ui/style/text_style.dart';

class ButtomCustomCredentials extends StatelessWidget {
  final double width;
  final double height;
  final String imputText;
  const ButtomCustomCredentials({super.key, required this.width, required this.height, required this.imputText});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(horizontal: width, vertical: height),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return ColorStyle.i.pink;
            }
            return ColorStyle.i.blue;
          },
        ),
      ),
      child: Text(
        imputText,
        style: TextStyles.i.textMedium.copyWith(
          fontSize: 16,
          color: ColorStyle.i.white,
        ),
      ),
    );
  }
}
