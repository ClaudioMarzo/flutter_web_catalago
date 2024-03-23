import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/core/ui/style/text_style.dart';
import 'package:katyfestacatalago/app/core/ui/style/color_style.dart';

class ButttomGoogleWidgets extends StatelessWidget {
  final double height;
  final double sizeImagem;
  final String assetImage;
  final String imputText;

  const ButttomGoogleWidgets({
    super.key,
    required this.height,
    required this.assetImage,
    required this.sizeImagem,
    required this.imputText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 420,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 2, // Defina a espessura da borda
          color: Colors.transparent, // Cor da borda, que será substituída pelo gradiente
        ),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 161, 197, 255), // Azul
            Color.fromARGB(255, 250, 166, 158), // Vermelho
            Color.fromARGB(255, 247, 222, 155), // Amarelo
            Color.fromARGB(255, 161, 255, 210), // Verde
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
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
      ),
    );
  }
}
