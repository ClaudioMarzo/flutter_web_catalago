import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/features/home/widgets/appbar/cart/cart_page.dart';
import 'package:katyfestacatalago/app/features/home/widgets/appbar/filter/text_filter.dart';
import 'package:katyfestacatalago/app/features/home/widgets/appbar/profile/profile_page.dart';
import 'package:katyfestacatalago/app/features/home/widgets/appbar/auth/auth_dialog_page.dart';

class AppBarWidgets extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidgets({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(170);
  @override
  Widget build(BuildContext context) {
    ValueNotifier<String> selectedFilter = ValueNotifier<String>('');
    return PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, 170),
      // child: Container(
      //   decoration: const BoxDecoration(
      //     gradient: LinearGradient(
      //       colors: <Color>[Colors.blue, Colors.pink],
      //     ),
      //   ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child: TextFilter(
                      filtertext: 'Produtos',
                      onPressed: () => selectedFilter.value = 'Produtos',
                      isSelected: selectedFilter.value == 'Produtos',
                    ),
                  ),
                  Flexible(
                    child: TextFilter(
                      filtertext: 'Kit Festas',
                      onPressed: () => selectedFilter.value = 'Kit Festas',
                      isSelected: selectedFilter.value == 'Kit Festas',
                    ),
                  ),
                  Flexible(
                    child: TextFilter(
                      filtertext: 'Aluguéis',
                      onPressed: () => selectedFilter.value = 'Alugueis',
                      isSelected: selectedFilter.value == 'Alugueis',
                    ),
                  ),
                  Flexible(
                    child: TextFilter(
                      filtertext: 'Confecções',
                      onPressed: () => selectedFilter.value = 'Confecções',
                      isSelected: selectedFilter.value == 'Confecções',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/logo.png',
              height: 116.68,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const Flexible(child: CartPage()),
                  const SizedBox(width: 30),
                  Flexible(
                    flex: 1,
                    child: ProfilePage(
                      imputText: 'Faça Login',
                      onPreesed: () {
                        showDialog(
                          context: context,
                          builder: (context) => const AuthDialogPage(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
    // )
  }
}
