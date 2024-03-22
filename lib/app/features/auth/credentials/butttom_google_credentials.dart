import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/core/ui/style/color_style.dart';
import 'package:katyfestacatalago/app/core/ui/style/text_style.dart';

class ButttomGoogleCredentials extends StatelessWidget {
  final double width;
  final double height;
  final double sizeImagem;
  final String assetImage;
  final String imputText;
  const ButttomGoogleCredentials({super.key, required this.width, required this.height, required this.assetImage, required this.sizeImagem, required this.imputText});

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
            return ColorStyle.i.white;
          },
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: sizeImagem,
            backgroundImage: AssetImage(assetImage),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 10),
          Text(
            imputText,
            style: TextStyles.i.textBold.copyWith(
              fontSize: 16,
              color: ColorStyle.i.gray,
            ),
          ),
        ],
      ),
    );
  }
}
