import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:katyfestacatalago/app/presentation/bloc/auth/auth_bloc.dart';
import 'package:katyfestacatalago/app/presentation/screen/home/home_page.dart';
import 'package:katyfestacatalago/app/infrastructure/datasources/interfaces/Iauth_user_datasource.dart';
import 'package:katyfestacatalago/app/infrastructure/datasources/firebase/auth_user_datasource_firebase.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    // i.add(GoogleAuthProvider.new);
    // i.addInstance(FirebaseAuth.instance);
    // i.add<IAuthUserDataSource>(AuthUserDatasourceFirebase.new);
    // i.addSingleton(AuthBloc.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
  }
}
