import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/color_style.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/text_style.dart';
import 'package:katyfestacatalago/app/presentation/screen/home/widgets/product/widget/buttom_custom_widget.dart';

class ProductWidget extends StatefulWidget {
  final String image;
  final String title;
  final Function() onPressed;

  const ProductWidget({
    super.key,
    required this.image,
    required this.title,
    required this.onPressed,
  });

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 444,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorStyle.i.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              // width: 288,
              // height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(widget.image),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.title,
              style: TextStyles.i.textBold.copyWith(
                fontSize: 24,
                color: ColorStyle.i.black,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 10),
            ButtomCustomWidget(
              onPressed: widget.onPressed,
              imputText: 'Ver mais informações',
            ),
          ],
        ),
      ),
    );
  }
}
