import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';
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
            'https://images.pexels.com/photos/11574219/pexels-photo-11574219.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
        favoritePlaces: [
          Place(
            id: 1,
            name: 'Название Кафе 1',
            description: 'Описание 1',
            distance: 111,
            imageUrl:
                'https://images.pexels.com/photos/11275219/pexels-photo-11275219.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
          ),
          Place(
            id: 2,
            name: 'Название Кафе 2',
            description: 'Описание 2',
            distance: 222,
            imageUrl:
                'https://images.pexels.com/photos/10898730/pexels-photo-10898730.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
          ),
        ],
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
