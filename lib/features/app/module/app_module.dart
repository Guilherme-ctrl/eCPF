import 'package:ecpf/core/services/page_namer.dart';
import 'package:ecpf/features/home/module/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../login/module/login_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [Bind((i) => PageNamer())];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LoginModule(), transition: TransitionType.noTransition),
    ModuleRoute("${Modular.initialRoute}/home", module: HomeModule(), transition: TransitionType.noTransition),
  ];
}
