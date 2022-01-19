import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'main_screen_vm.dart';

/// Глвный экран с табами
class MainScreen extends StatelessWidget {
  static const double _labelSize = 12.0;

  final MainScreenVm vm;

  // TODO(artem-zaitsev): здесь будут храниться экраны, когда появятся
  final List<Widget> _screens = [
    const Center(
      child: Text('Screen 1'),
    ),
    const Center(
      child: Text('Screen 1'),
    ),
    const Center(
      child: Text('Screen 2'),
    ),
  ];

  MainScreen({Key? key, required this.vm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        body: _screens[vm.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: vm.tabClicked,
          currentIndex: vm.currentIndex,
          selectedFontSize: _labelSize,
          unselectedFontSize: _labelSize,
          items: [
            // TODO: поменять иконки из дизайна, когда они появятся
            BottomNavigationBarItem(
              icon: const Icon(Icons.search),
              activeIcon: const Icon(
                Icons.search,
              ),
              label: AppLocalizations.of(context)!.placesTabName,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.card_giftcard),
              activeIcon: const Icon(Icons.card_giftcard),
              label: AppLocalizations.of(context)!.cardTabName,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.account_circle),
              activeIcon: const Icon(Icons.account_circle),
              label: AppLocalizations.of(context)!.profileTabName,
            ),
          ],
        ),
      ),
    );
  }
}
