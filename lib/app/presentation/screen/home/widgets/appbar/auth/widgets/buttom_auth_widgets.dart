import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/text_style.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/color_style.dart';

class ButtomAuthWidgets extends StatelessWidget {
  final double height;
  final String imputText;

  const ButtomAuthWidgets({
    super.key,
    required this.height,
    required this.imputText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 202.0,
      height: height,
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                imputText,
                style: TextStyles.i.textRegular.copyWith(
                  fontSize: 16,
                  color: ColorStyle.i.white,
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            const Icon(
              Icons.keyboard_double_arrow_right_rounded,
              size: 25,
            ),
          ],
        ),
      ),
    );
  }
}
