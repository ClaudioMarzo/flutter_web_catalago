import 'package:flutter/material.dart';
import 'package:katyfestacatalago/app/core/ui/style/color_style.dart';
import 'package:katyfestacatalago/app/core/ui/style/text_style.dart';

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
    double heightImput = 20.0;
    return Dialog(
      backgroundColor: ColorStyle.i.white,
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
                    padding: const EdgeInsets.only(bottom: 30, top: 30),
                    child: Text(
                      'Conta',
                      style: TextStyles.i.textExtraBold.copyWith(
                        fontSize: 32,
                        color: ColorStyle.i.black,
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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30, top: 30),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: heightButton,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorStyle.i.blue,
                            // gradient: LinearGradient(
                            //   begin: Alignment.topCenter,
                            //   end: Alignment.bottomCenter,
                            //   colors: <Color>[
                            //     ColorStyle.i.blue,
                            //     ColorStyle.i.lightblue,
                            //   ],
                            // ),
                          ),
                          width: double.maxFinite,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Fazer Login',
                              style: TextStyles.i.textMedium.copyWith(
                                fontSize: 16,
                                color: ColorStyle.i.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: heightButton,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorStyle.i.blue,
                            // gradient: LinearGradient(
                            //   begin: Alignment.topCenter,
                            //   end: Alignment.bottomCenter,
                            //   colors: <Color>[
                            //     ColorStyle.i.blue,
                            //     ColorStyle.i.lightblue,
                            //   ],
                            // ),
                          ),
                          width: double.maxFinite,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Cadastrar',
                              style: TextStyles.i.textMedium.copyWith(
                                fontSize: 16,
                                color: ColorStyle.i.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Flexible(
                    flex: 1,
                    child: Container(
                      height: heightButton,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorStyle.i.white,
                        // gradient: LinearGradient(
                        //   begin: Alignment.topCenter,
                        //   end: Alignment.bottomCenter,
                        //   colors: <Color>[
                        //     ColorStyle.i.blue,
                        //     ColorStyle.i.lightblue,
                        //   ],
                        // ),
                      ),
                      width: double.maxFinite,
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person, color: ColorStyle.i.gray),
                            const SizedBox(width: 10),
                            Text(
                              'Continuar com Google',
                              style: TextStyles.i.textMedium.copyWith(
                                fontSize: 16,
                                color: ColorStyle.i.gray,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
