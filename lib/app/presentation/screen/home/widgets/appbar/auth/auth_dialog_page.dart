import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/text_style.dart';
import 'package:katyfestacatalago/app/presentation/widgets/style/color_style.dart';
import 'package:katyfestacatalago/app/presentation/screen/home/widgets/appbar/auth/widgets/imput_custom_widgets.dart';
import 'package:katyfestacatalago/app/presentation/screen/home/widgets/appbar/auth/widgets/buttom_auth_widgets.dart';
import 'package:katyfestacatalago/app/presentation/screen/home/widgets/appbar/auth/widgets/butttom_google_widgets.dart';

class AuthDialogPage extends StatefulWidget {
  const AuthDialogPage({super.key});

  @override
  State<AuthDialogPage> createState() => _AccountWidgetsState();
}

class _AccountWidgetsState extends State<AuthDialogPage> {
  late TextEditingController textControllerEmail;
  late FocusNode textFocusNodeEmail;

  late TextEditingController textControllerPassword;
  late FocusNode textFocusNodePassword;

  @override
  void initState() {
    textControllerEmail = TextEditingController();
    textControllerPassword = TextEditingController();
    textControllerEmail.text = '';
    textControllerPassword.text = '';
    textFocusNodeEmail = FocusNode();
    textFocusNodePassword = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double heightButton = 56.0;
    double profileimagesize = 15.0;
    return Dialog(
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
                      ImputCustomWidgets(
                        focus: textFocusNodeEmail,
                        textImputType: TextInputType.emailAddress,
                        textController: textControllerEmail,
                        imputText: 'E-mail',
                        icon: Icons.person,
                        isPassword: false,
                      ),
                      ImputCustomWidgets(
                        focus: textFocusNodePassword,
                        textImputType: TextInputType.visiblePassword,
                        textController: textControllerPassword,
                        imputText: 'Senha',
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
                        imputText: 'Fazer Login',
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: ButtomAuthWidgets(
                        height: heightButton,
                        imputText: 'Cadastrar',
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
                    imputText: 'Continuar com Google',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
