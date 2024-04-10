import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:katyfestacatalago/app/presentation/bloc/auth/auth_bloc.dart';
import 'package:katyfestacatalago/app/presentation/screen/home/widgets/appbar/app_bar_widgets.dart';
import 'package:katyfestacatalago/app/presentation/screen/home/widgets/product/product_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final ScrollController _scrollController = ScrollController();
  // List<String> items = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidgets(),
      body: GridView.builder(
        padding: const EdgeInsets.only(left: 100, right: 100),
        scrollDirection: Axis.vertical,
        itemCount: 20, // Exemplo de quantidade de itens
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // Define que os itens serão dispostos em uma única coluna
          childAspectRatio: 3 / 2, // Define a proporção dos itens, ajuste conforme necessário
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(40),
            child: ProductWidget(
              image: 'kit-festa-para-10-pessoas-com-bolo-salgado-doce--650x650.png',
              title: 'Kit Festa Básico',
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }
}
