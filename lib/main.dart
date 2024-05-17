
import 'package:flutter_modular/flutter_modular.dart';

import 'package:ecpf/features/app/module/app_module.dart';
import 'package:ecpf/features/app/presentation/app_widget.dart';
import 'package:flutter/material.dart';


void main() {
  
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}




