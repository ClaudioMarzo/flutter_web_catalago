import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/color_style.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/text_style.dart';

class ButtomCustomWidget extends StatefulWidget {
  final Function() onPressed;
  final String inputText;

  const ButtomCustomWidget({
    super.key,
    required this.onPressed,
    required this.inputText,
  });

  @override
  State<ButtomCustomWidget> createState() => _ButtomCustomWidgetState();
}

class _ButtomCustomWidgetState extends State<ButtomCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 288,
      height: 56,
      child: TextButton(
        onPressed: widget.onPressed,
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
        child: Align(
          alignment: Alignment.center,
          child: Text(
            widget.inputText,
            style: TextStyles.i.textRegular.copyWith(
              fontSize: 16,
              color: ColorStyle.i.white,
            ),
          ),
        ),
      ),
    );
  }
}
