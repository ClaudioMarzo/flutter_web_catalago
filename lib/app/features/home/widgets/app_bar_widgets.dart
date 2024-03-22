import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/core/ui/style/color_style.dart';
import 'package:katyfestacatalago/app/core/ui/style/text_style.dart';

class AppBarWidgets extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const AppBarWidgets({super.key, required this.height});

  @override
  Size get preferredSize => Size.fromHeight(height + 60);

  @override
  Widget build(BuildContext context) {
    double filtertextsize = 20.0;
    double widthbetweenuttons = 22.0;
    double profileimagesize = 24.0;
    return PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, height + 60),
      // child: Container(
      //   decoration: const BoxDecoration(
      //     gradient: LinearGradient(
      //       colors: <Color>[Colors.blue, Colors.pink],
      //     ),
      //   ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 40.0,
            left: 20.0,
            right: 20.0,
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Produtos",
                              style: TextStyles.i.textMedium.copyWith(fontSize: filtertextsize),
                            ),
                          ),
                          SizedBox(width: widthbetweenuttons),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Kit Festas",
                              style: TextStyles.i.textExtraBold.copyWith(fontSize: filtertextsize),
                            ),
                          ),
                          SizedBox(width: widthbetweenuttons),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Alugueis",
                              style: TextStyles.i.textExtraBold.copyWith(fontSize: filtertextsize),
                            ),
                          ),
                          SizedBox(width: widthbetweenuttons),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Confecções",
                              style: TextStyles.i.textExtraBold.copyWith(fontSize: filtertextsize),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: ColorStyle.i.white,
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [
                                BoxShadow(
                                  color: ColorStyle.i.darkwhite,
                                  offset: const Offset(4, 4),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                                right: 15,
                                bottom: 5,
                                top: 5,
                              ),
                              child: Icon(
                                Icons.shopping_cart_outlined,
                              ),
                            ),
                          ),
                          SizedBox(width: widthbetweenuttons),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/account");
                            },
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: ColorStyle.i.white,
                                borderRadius: BorderRadius.circular(8.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorStyle.i.darkwhite,
                                    offset: const Offset(4, 4),
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                  bottom: 5,
                                  top: 5,
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Faça Login',
                                      style: TextStyles.i.textExtraBold.copyWith(fontSize: 18),
                                    ),
                                    SizedBox(width: widthbetweenuttons),
                                    CircleAvatar(
                                      radius: profileimagesize,
                                      backgroundImage: const AssetImage('assets/images/perfil.jpeg'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onLongPress: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              height: 116.68,
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
