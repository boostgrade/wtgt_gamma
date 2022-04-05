import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:where_to_go_today/src/features/main/main_vm.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';

/// Главный экран с табами
class MainScreen extends StatefulWidget {
  final MainVm vm;
  final String? initialScreen;
  final List<Widget> screens;

  const MainScreen({
    Key? key,
    required this.vm,
    required this.initialScreen,
    required this.screens,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    final initialTabId = int.tryParse(widget.initialScreen ?? '');
    _tabController = TabController(
      initialIndex: initialTabId ?? 0,
      length: widget.screens.length,
      animationDuration: Duration.zero,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        body: TabBarView(
          controller: _tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: widget.screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _tabClicked,
          currentIndex: _tabController.index,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.search),
              label: context.l10n.placesTabName,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.card_giftcard),
              label: context.l10n.cardTabName,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.account_circle),
              label: context.l10n.profileTabName,
            ),
          ],
        ),
      ),
    );
  }

  void _tabClicked(int index) {
    setState(() {
      _tabController.index = index;
    });
  }
}
