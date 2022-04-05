import 'package:flutter/material.dart';

class ProfileSubHeader extends StatelessWidget {
  final String text;
  final TextStyle style;

  const ProfileSubHeader({Key? key, required this.text, required this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: true,
      delegate: _SliverAppBarDelegate(
        title: text,
        style: style,
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final String title;
  final TextStyle style;

  @override
  double get minExtent => 30;

  @override
  double get maxExtent => 50;

  _SliverAppBarDelegate({required this.title, required this.style});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Text(title, style: style);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return true;
  }
}
