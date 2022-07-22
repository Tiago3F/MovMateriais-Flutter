import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movmateriais/app/modules/home/controllers/home_store.dart';
import 'package:provider/provider.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          Provider<HomeStore>(
            create: (_) => HomeStore(),

            // dispose: (_, controller) => controller.dispose(),
          ),
        ],
        child: ModularApp(
          module: AppModule(),
          child: const AppWidget(),
        ),
      ),
    );
