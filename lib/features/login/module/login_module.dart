import 'package:ecpf/features/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';


class LoginModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, __) => LoginPage(),
      transition: TransitionType.rightToLeftWithFade,
    ),

  ];
}
