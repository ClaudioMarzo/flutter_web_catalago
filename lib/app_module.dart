import 'package:flutter_modular/flutter_modular.dart';
import 'package:katyfestacatalago/app/presentation/screen/home/home_page.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
  }
}
