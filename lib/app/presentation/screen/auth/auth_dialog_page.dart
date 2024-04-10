import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:katyfestacatalago/app/domain/entities/user_entity.dart';
import 'package:katyfestacatalago/app/presentation/bloc/auth/auth_bloc.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/text_style.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/color_style.dart';
import 'package:katyfestacatalago/app/presentation/screen/auth/widgets/input_custom_widgets.dart';
import 'package:katyfestacatalago/app/presentation/screen/auth/widgets/buttom_auth_widgets.dart';
import 'package:katyfestacatalago/app/presentation/screen/auth/widgets/butttom_google_widgets.dart';

class AuthDialogPage extends StatefulWidget {
  const AuthDialogPage({super.key});

  @override
  State<AuthDialogPage> createState() => _AccountWidgetsState();
}

class _AccountWidgetsState extends State<AuthDialogPage> {
  late TextEditingController _textControllerEmail;
  late FocusNode textFocusNodeEmail;

  late TextEditingController _textControllerPassword;
  late FocusNode textFocusNodePassword;

  @override
  void initState() {
    _textControllerEmail = TextEditingController();
    _textControllerPassword = TextEditingController();
    _textControllerEmail.text = '';
    _textControllerPassword.text = '';
    textFocusNodeEmail = FocusNode();
    textFocusNodePassword = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double heightButton = 56.0;
    double profileimagesize = 15.0;
    return BlocProvider<AuthBloc>(
      create: (context) => Modular.get<AuthBloc>(),
      child: Dialog(
        backgroundColor: ColorStyle.i.darkwhite,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: SingleChildScrollView(
          child: SizedBox(
            width: 500,
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 48,
                    width: 420,
                    child: Text(
                      'Conta',
                      style: TextStyles.i.textMedium.copyWith(fontSize: 32),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 420,
                    height: 172,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        inputCustomWidgets(
                          focus: textFocusNodeEmail,
                          textinputType: TextInputType.emailAddress,
                          textController: _textControllerEmail,
                          inputText: 'E-mail',
                          icon: Icons.person,
                          isPassword: false,
                        ),
                        inputCustomWidgets(
                          focus: textFocusNodePassword,
                          textinputType: TextInputType.visiblePassword,
                          textController: _textControllerPassword,
                          inputText: 'Senha',
                          icon: Icons.lock,
                          isPassword: true,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: ButtomAuthWidgets(
                          height: heightButton,
                          inputText: 'Fazer Login',
                          onPressed: () => Modular.get<AuthBloc>().add(
                            UserEntity(
                              email: _textControllerEmail.text,
                              senha: _textControllerPassword.text,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: ButtomAuthWidgets(
                          height: heightButton,
                          inputText: 'Cadastrar',
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Flexible(
                    flex: 1,
                    child: ButttomGoogleWidgets(
                      height: heightButton,
                      assetImage: 'assets/images/google.png',
                      sizeImagem: profileimagesize,
                      inputText: 'Continuar com Google',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
