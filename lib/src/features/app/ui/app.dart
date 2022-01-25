import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:routemaster/routemaster.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model_disposer_mixin.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';
import 'package:where_to_go_today/src/features/app/ui/app_vm.dart';
import 'package:where_to_go_today/src/navigation/app_router.dart';
import 'package:where_to_go_today/src/res/theme/app_theme.dart';

/// The Widget that configures your application.
class App extends StatefulWidget {
  final AppVm vm;

  const App({
    Key? key,
    required this.vm,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with ViewModelDisposerMixin<App, AppVm> {
  @override
  AppVm get vm => widget.vm;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: vm,
      builder: (context, child) {
        return MaterialApp.router(
          scaffoldMessengerKey:
              context.read<AppDependencies>().messageController.scaffoldKey,
          routerDelegate: RoutemasterDelegate(
            routesBuilder: (_) => AppRouter.routes,
          ),
          routeInformationParser: const RoutemasterParser(),
          restorationScopeId: 'app',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
            Locale('ru', ''), // Russia, no country code
            Locale('RU', ''), // Russia, no country code
          ],
          onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
          theme: AppTheme.lightTheme,
          darkTheme: ThemeData.dark(),
          themeMode: widget.vm.themeMode,
        );
      },
    );
  }
}
