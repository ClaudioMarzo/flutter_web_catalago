import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/core/ui/style/text_style.dart';
import 'package:katyfestacatalago/app/core/ui/style/color_style.dart';
import 'package:katyfestacatalago/app/features/auth/credentials/buttom_custom_credentials.dart';
import 'package:katyfestacatalago/app/features/auth/credentials/butttom_google_credentials.dart';

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
    double heightButton = 25.0;
    double widthButton = 62.0;
    double heightImput = 18.0;
    double iconImputSize = 23.0;
    double iconWidthFactor = 3.0;
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
            padding: const EdgeInsets.only(
              left: 40.0,
              right: 40.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 25),
                    child: Text(
                      'Conta',
                      style: TextStyles.i.textExtraBold.copyWith(
                        fontSize: 33,
                      ),
                    ),
                  ),
                ),
                TextField(
                  focusNode: textFocusNodeEmail,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  controller: textControllerEmail,
                  autofocus: false,
                  onChanged: (value) {},
                  onSubmitted: (value) {
                    textFocusNodeEmail.unfocus();
                    FocusScope.of(context).requestFocus(textFocusNodeEmail);
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(heightImput),
                    hintText: "E-mail",
                    suffixIcon: Align(
                      widthFactor: iconWidthFactor,
                      child: Icon(
                        color: ColorStyle.i.lightgray,
                        size: iconImputSize,
                        Icons.person,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                TextField(
                  focusNode: textFocusNodePassword,
                  keyboardType: TextInputType.streetAddress,
                  textInputAction: TextInputAction.next,
                  controller: textControllerPassword,
                  autofocus: false,
                  onChanged: (value) {},
                  onSubmitted: (value) {
                    textFocusNodeEmail.unfocus();
                    FocusScope.of(context).requestFocus(textFocusNodePassword);
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(heightImput),
                    hintText: "Senha",
                    suffixIcon: Align(
                      widthFactor: iconWidthFactor,
                      child: Icon(
                        color: ColorStyle.i.lightgray,
                        size: iconImputSize,
                        Icons.lock,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: ButtomCustomCredentials(
                        width: widthButton,
                        height: heightButton,
                        imputText: 'Fazer login',
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: ButtomCustomCredentials(
                        width: widthButton,
                        height: heightButton,
                        imputText: 'Cadastrar',
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Flexible(
                  flex: 1,
                  child: ButttomGoogleCredentials(
                    width: widthButton,
                    height: heightButton,
                    assetImage: 'assets/images/google.png',
                    sizeImagem: profileimagesize,
                    imputText: 'Continuar com Google',
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
