import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/text_style.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/color_style.dart';

class ProfilePage extends StatefulWidget {
  final String inputText;
  final void Function() onPreesed;

  const ProfilePage({
    super.key,
    required this.inputText,
    required this.onPreesed,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 60,
      child: TextButton(
        onPressed: widget.onPreesed,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                widget.inputText,
                style: TextStyles.i.textMedium.copyWith(
                  fontSize: 12,
                  color: ColorStyle.i.black,
                ),
              ),
            ),
            const Flexible(
              child: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage('assets/images/perfil.jpeg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
