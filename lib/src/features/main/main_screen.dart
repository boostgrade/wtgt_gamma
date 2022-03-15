import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:where_to_go_today/src/features/profile/ui/profile/profile_screen.dart';
import '../../core/domain/user.dart';
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
    ProfileScreen(
      User(
        id: 1,
        name: 'Мирон',
        lastName: 'Бункеров',
        birthDate: '',
        email: '',
        phone: '',
        photoUrl:
            'https://s3-alpha-sig.figma.com/img/2fb3/141e/57d3910fcca978d11b1ea71e2e0802b1?Expires=1648425600&Signature=EY1EftdoecTgb6U8YPE0ylxQNUNWMbpu8UTFdWIhNpu7mvi-pBBuB30FROSp~wjx49ncN0eZbTTNDcwh4phloshpFiU~WdFJ~G8uizIr0zXFmig7sNfmi2aTA4m1FXvEth66oGTbSGFEeksUAwsmbE7pcIol6gWYFUMfFP~GRQ2Fc0xt4w9JRNbq8NvmBMCy5AT-PbtVsFH3fD2DipslSOPEHWkHY1RzPfUZC8nt4qKrB-JIY6tkQN48xF~BmZ2pTiwRwHZvBuHuxeS2eVD4Sz5r5LzILeunUeYeZi3p3VjZnc8l0zlQpz721rS-0bTSs29udXuxUUjH5O9NfGxHGA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
      ),
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
          items: [
            // TODO(any): поменять иконки из дизайна, когда они появятся
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
