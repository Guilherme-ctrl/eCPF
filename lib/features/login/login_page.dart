import 'package:ecpf/core/validators/text_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/services/page_namer.dart';
import '../widgets/background.dart';
import '../widgets/buttons/rounded_buttom_widget.dart';
import '../widgets/input/text_form_field_widget_new.dart';
import '../widgets/responsive.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final pageNamer = Modular.get<PageNamer>();
  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      pageNamer.setPageTitle("Login", context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: SingleChildScrollView(child: Responsive(mobile: mobileState(), desktop: desktopState())),
    ));
  }

  Widget desktopState() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          "assets/images/ecpf_logo.svg",
          width: MediaQuery.of(context).size.width * .1,
          height: MediaQuery.of(context).size.height * .3,
        ),
        SizedBox(width: MediaQuery.of(context).size.width * .1),
        Container(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 30, top: 20),
          width: MediaQuery.of(context).size.width * .3,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormFieldWidgetNew(
                  boxColor: Colors.grey,
                  fillColor: Colors.white,
                  labelTextColor: Colors.black,
                  validator: textEmptyValidator,
                  labelText: "CPF",
                ),
                SizedBox(height: 20),
                TextFormFieldWidgetNew(
                  boxColor: Colors.grey,
                  fillColor: Colors.white,
                  labelTextColor: Colors.black,
                  validator: textEmptyValidator,
                  labelText: "Senha",
                ),
                SizedBox(height: 30),
                RoundedButtomWidget(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Modular.to.pushNamed("/home/");
                    }
                  },
                  backgroundColor: Colors.green,
                  label: "Login",
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget mobileState() {
    return Center(
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 81.0),
              child: SvgPicture.asset(
                "assets/images/ecpf_logo.svg",
                width: 300,
                height: 300,
              ),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.only(left: 8, right: 8, bottom: 30, top: 20),
              width: 500,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormFieldWidgetNew(
                      boxColor: Colors.green,
                      fillColor: Colors.white,
                      labelTextColor: Colors.black,
                      labelText: "CPF",
                    ),
                    SizedBox(height: 20),
                    TextFormFieldWidgetNew(
                      boxColor: Colors.green,
                      fillColor: Colors.white,
                      labelTextColor: Colors.black,
                      labelText: "Senha",
                    ),
                    SizedBox(height: 30),
                    RoundedButtomWidget(
                      onPressed: () {},
                      backgroundColor: Colors.green,
                      label: "Login",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
